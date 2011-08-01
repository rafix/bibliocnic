<?php
/**
 * Pregunta actions
 */
class preguntaActions extends myFrontModuleActions
{

  public function executeFormWidget(dmWebRequest $request)
  {
    $form = new preguntaForm();
        
    if ($request->isMethod('post') && $form->bindAndValid($request))
    {
      $form->save();
	  $this->getUser()->setFlash('pregunta_form_valid', true);
	  $user = $this->getUser()->getDmUser();
	  /*$this->getService('mail')->setTemplate('solicitud_busqueda_especializada')
	  ->addValues(array(                            
       'titulo'       => $form->getValue('titulo'),
       'email'	      => $user->getEmail(),
	   'mensaje'      => $form->getValue('mensaje'),
	   'nombre'       => $user->getNombre(),
	   'apellidos'    => $user->getApellidos()
      
)) 
	  
	  ->send();  */
      $this->redirectBack();
    }
    
    $this->forms['pregunta'] = $form;
  }


}
