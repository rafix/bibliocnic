<?php
/**
 * Solicitud prestamo actions
 */
class solicitudPrestamoActions extends myFrontModuleActions
{

  public function executeFormWidget(dmWebRequest $request)
  {
    $form = new SolicitudPrestamoForm();
        
    if ($request->hasParameter($form->getName()) && $form->bindAndValid($request))
    {
      $form->save();
      $this->redirectBack();
    }
    
    $this->forms['SolicitudPrestamo'] = $form;
  }
 public function executeSolicitar() {
 
 $solicitud = new SolicitudPrestamo();
 $user = sfContext::getInstance()->getUser()->getDmUser();
 
 $recurso = sfContext::getInstance()->getUser()->getAttribute('recurso');
 
 $solicitud->set('dm_user_id', $user);
 $solicitud->set('recurso_id', $recurso);
 $solicitud->save();
 $this->getUser()->getAttributeHolder()->remove('recurso');
 $this->redirectback();

}
}