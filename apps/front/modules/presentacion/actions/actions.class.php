<?php
/**
 * Presentacion actions
 */
class presentacionActions extends myFrontModuleActions
{

  public function executeFormWidget(dmWebRequest $request)
  {
    $form = new PresentacionForm();
        
    if ($request->hasParameter($form->getName()) && $form->bindAndValid($request))
    {
      $form->save();
	  $this->getUser()->setFlash('formulario_valido',true);
      $this->redirectBack();
    }
    
    $this->forms['Presentacion'] = $form;
  }


}
