<?php
/**
 * Documento legal actions
 */
class documentoLegalActions extends myFrontModuleActions
{
public function executeFormWidget(dmWebRequest $request)
  {
    $form = new documentolegalForm();
        
    if ($request->hasParameter($form->getName()) && $form->bindAndValid($request))
    {
      $form->save();
	  $this->getUser()->setFlash('formulario_valido',true);
      $this->redirectBack();
    }
    
    $this->forms['documentolegal'] = $form;
  }

}
