<?php

require_once dirname(__FILE__).'/../lib/respuestaBusquedaGeneratorConfiguration.class.php';
require_once dirname(__FILE__).'/../lib/respuestaBusquedaGeneratorHelper.class.php';

/**
 * respuestaBusqueda actions.
 *
 * @package    bibliocnic
 * @subpackage respuestaBusqueda
 * @author     Your name here
 * @version    SVN: $Id: actions.class.php 12474 2008-10-31 10:41:27Z fabien $
 */
class respuestaBusquedaActions extends autoRespuestaBusquedaActions
{
public function executeFormWidget(dmWebRequest $request)
  {
 $form = new respuestaBusquedaForm();
 if ($request->isMethod('post') && $form->bindAndValid($request))
    {
      $form->save();
	  $user = $this->getUser()->getDmUser();
	  $this->getService('mail')->setTemplate('respuesta_busqueda')
	  ->addValues(array(                            
       'busqueda_id'  => $form->getValue('busqueda_id'),
       'email'	      => $user->getEmail(),
	   'mensaje'      => $form->getValue('mensaje'),
       'username'     => $user->getUsername(),
	   'nombre'       => $user->getNombre(),
	   'apellidos'    => $user->getApellidos(),
       'create_at'    => $form->getValue('create_at')
      
)) 
	  
	  ->send();  
      $this->redirectBack();
    }
 $this->forms['respuestaBusqueda'] = $form;
}
}