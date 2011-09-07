<?php
/**
 * Monografia actions
 * 
 */
class monografiaActions extends myFrontModuleActions
{

  public function executeFormWidget(dmWebRequest $request)
  {
    $form = new monografiaForm();
        
    if ($request->hasParameter($form->getName()) && $form->bindAndValid($request))
    {
      $form->save();
	  $this->getUser()->setFlash('formulario_valido',true);
      $this->redirectBack();
    }
    
    $this->forms['monografia'] = $form;
  }


}
