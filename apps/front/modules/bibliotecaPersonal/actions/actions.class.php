<?php
/**
 * Biblioteca personal actions
 */
class bibliotecaPersonalActions extends myFrontModuleActions
{
  
  public function executeFormWidget(dmWebRequest $request)
  {
    $form = new bibliotecapersonalForm();
        
    if ($request->hasParameter($form->getName()) && $form->bindAndValid($request))
    {
      $form->save();
	  $this->getUser()->setFlash('formulario_valido', true);
      $this->redirectBack();
    }
    
    $this->forms['bibliotecapersonal'] = $form;
  }


}
