<?php
/**
 * Autor actions
 */
class autorActions extends myFrontModuleActions
{

  public function executeFormWidget(dmWebRequest $request)
  {
    $form = new AutorForm();
        
    if ($request->hasParameter($form->getName()) && $form->bindAndValid($request))
    {
      $form->save();
	  $this->getUser()->setFlash('formulario_valido', true);
      $this->redirectBack();
    }
    
    $this->forms['Autor'] = $form;
  }


}
