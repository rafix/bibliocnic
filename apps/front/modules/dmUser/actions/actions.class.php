<?php
require_once sfConfig::get('dm_core_dir').'/plugins/dmUserPlugin/modules/dmUser/lib/BasedmUserActions.class.php';
 
class dmUserActions extends BasedmUserActions  
{
 
  protected function redirectRegisteredUser(dmWebRequest $request)  
  {  
    $this->redirect($request->getReferer());  
  }    
  protected function redirectSignedInUser(dmWebRequest $request)  
  {  
    $redirectUrl = $this->getUser()->getReferer($request->getReferer());  
 
    $this->redirect('' != $redirectUrl ? $redirectUrl : '@homepage');  
  }
    /**  
   * Handle dmUser/form form validation and creates the user account, then authenticates the user  
   */  
  public function executeFormWidget(dmWebRequest $request)  
  {  
    $form = new DmUserForm();  
 
    if ($request->isMethod('post') && $request->hasParameter($form->getName()))  
    {  
      $data = $request->getParameter($form->getName());  
 
      // if the form uses captcha, include the additional data  
      if($form->isCaptchaEnabled())  
      {  
        $data = array_merge($data, array('captcha' => array(  
          'recaptcha_challenge_field' => $request->getParameter('recaptcha_challenge_field'),  
          'recaptcha_response_field'  => $request->getParameter('recaptcha_response_field'),  
        )));  
      }  
 
      $form->bind($data, $request->getFiles($form->getName()));  
 
      if ($form->isValid())  
      {  
        $user = $form->save();  
 
        $this->getUser()->signin($user);  
 
        $this->redirectRegisteredUser($request);  
      }  
    }  
 
    // pass the form to the component  
    $this->forms['DmUser'] = $form;  
  }  
}
 
?>