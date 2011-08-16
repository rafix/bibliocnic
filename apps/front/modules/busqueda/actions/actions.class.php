<?php
/**
 * Busqueda actions
 * 
 */
class busquedaActions extends myFrontModuleActions
{

  public function executeFormWidget(dmWebRequest $request)
  {
    $form = new busquedaForm();
          
    if ($request->isMethod('post') && $form->bindAndValid($request))
    {
      $form->save();
	  $this->getUser()->setFlash('busqueda_form_valid', true);
	  $user = $this->getUser()->getDmUser();
	  
	 $this->getService('mail')->setTemplate('solicitud_busqueda_especializada')
	  ->addValues(array(                            
       'titulo'       => $form->getValue('titulo'),
       'email'	      => $user->getEmail(),
	   'mensaje'      => $form->getValue('mensaje'),
	   'tematica'     => $form->getValue('tematica'),
	   'fecha_antes'  => $form->getValue('fecha_antes'),
	   'fecha_despues'=> $form->getValue('fecha_despues'),
	   'nombre'       => $user->getNombre(),
	   'apellidos'    => $user->getApellidos()
      
)) 
	  
	  ->send();  
	  
	  
      $this->redirectBack();
    }
    
    $this->forms['busqueda'] = $form;
  }


}