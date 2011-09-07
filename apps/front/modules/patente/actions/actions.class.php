<?php
/**
 * Patente actions
 */
class patenteActions extends myFrontModuleActions
{

  public function executeFormWidget(dmWebRequest $request)
  {
    $form = new PatenteForm();
        
    if ($request->hasParameter($form->getName()) && $form->bindAndValid($request))
    {
      $form->save();
	  $this->getUser()->setFlash('formulario_valido',true);
      $this->redirectBack();
    }
    
    $this->forms['Patente'] = $form;
  }


}
