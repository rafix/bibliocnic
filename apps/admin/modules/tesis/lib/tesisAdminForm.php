<?php

/**
 * tesis admin form
 *
 * @package    bibliocnic
 * @subpackage tesis
 * @author     Your name here
 */
class tesisAdminForm extends BasetesisForm
{  

  protected function createMediaFormForPdf()  
  {  
    // get the DmMedia form  
    $form = parent::createMediaFormForPdf();  
 
    // choose mime types allowed  
    $form->setMimeTypeWhiteList(array(  
      'application/pdf', 
    ));  
 
    return $form;  
  }   
  public function configure()
  {
    parent::configure();
  }
}