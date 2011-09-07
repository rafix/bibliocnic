<?php
/**
 * Articulo actions
 */
class articuloActions extends myFrontModuleActions
{

  public function executeFormWidget(dmWebRequest $request)
  {
    $form = new ArticuloForm();
        
    if ($request->hasParameter($form->getName()) && $form->bindAndValid($request))
    {
      $form->save();
	  $this->getUser()->setFlash('formulario_valido', true); 
      $this->redirectBack();
    }
    
    $this->forms['Articulo'] = $form;
  }


}
