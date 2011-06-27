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
	  
	  $this->getService('mail')->setTemplate('solicitud_busqueda_especializada')->send(); 
	  
	  
      $this->redirectBack();
    }
    
    $this->forms['busqueda'] = $form;
  }


}
