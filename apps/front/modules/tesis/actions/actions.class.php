<?php
/**
 * Tesis actions
 * 
 */
class tesisActions extends myFrontModuleActions
{

  public function executeFormWidget(dmWebRequest $request)
  {
    $form = new tesisForm();
        
    if ($request->hasParameter($form->getName()) && $form->bindAndValid($request))
    {
      $form->save();
      $this->redirectBack();
    }
    
    $this->forms['tesis'] = $form;
  }

  public function executeFormUploadWidget(dmWebRequest $request)
  {
    $form = new tesisForm();
        
    if ($request->hasParameter($form->getName()) && $form->bindAndValid($request))
    {
      $form->save();
      $this->redirectBack();
    }
    
    $this->forms['tesis'] = $form;
  }


}
