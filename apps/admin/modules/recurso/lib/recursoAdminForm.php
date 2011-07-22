<?php

/**
 * recurso admin form
 *
 * @package    bibliocnic
 * @subpackage recurso
 * @author     Your name here
 */
class recursoAdminForm extends BaserecursoForm
{
  public function configure()
  {
    parent::configure();
  
  $this->widgetSchema['pdf'] = new sfWidgetFormInputFileEditable(array(
 'label'     => 'Pdf',
 'file_src'  => '/uploads/docpdf/pdf-logo.jpg',
 'is_image'  => false,
 'with_delete' => true,
 'edit_mode' => !$this->isNew(),
 'template'  => '<div>%file%<br />%input%<br /></div>'
));
$this->validatorSchema['pdf'] = new sfValidatorFile(array(
 'required'   => false,
 'path'       => sfConfig::get('sf_upload_dir') . '/docpdf',
 'mime_types' => 'application/pdf'
 
));
  
  }
  
}