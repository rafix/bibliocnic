<?php

/**
 * DmUserAdminForm for admin generators
 *
 * @package    sfDoctrineGuardPlugin
 * @subpackage form
 * @author     Fabien Potencier <fabien.potencier@symfony-project.com>
 * @version    SVN: $Id: DmUserAdminForm.class.php 23536 2009-11-02 21:41:21Z Kris.Wallsmith $
 */
class DmUserAdminForm extends BaseDmUserAdminForm
{
  /*protected function createMediaFormForFotoIdForm()  
  {  
    // get the DmMedia form  
    $form = parent::createMediaFormForFotoIdForm();  
 
    // choose mime types allowed  
    $form->setMimeTypeWhiteList(array(  
      'image/jpeg',  
      'image/png'  
    ));  
 
    return $form;  
  }    */ 
  public function configure()
  {
    
 
	
	$this->widgetSchema['foto_id_form'] = new sfWidgetFormInputFileEditable(array(
 'label'     => 'imagen',
 'file_src'  => '/uploads/dm-user/',
 'is_image'  => true,
 'edit_mode' => !$this->isNew(),
  'template'  => '<div>%file%<br />%input%<br /></div>'
));
$this->validatorSchema['foto_id_form'] = new sfValidatorFile(array(
 'required'   => false,
 'path'       => sfConfig::get('sf_upload_dir') . '/dm_user/',
 'mime_types' => 'web_images'
));

/*$this->validatorSchema['foto_id_form'] = new sfValidatorFile(array(
        'required'                          =>  false,
        'path'                              =>  sfConfig::get('sf_upload_dir').'/dm_user/',
        'mime_types'                        =>  array('image/jpeg','image/pjpeg','image/png','image/x-png','image/gif','application/x-shockwave-flash')
        )
    );*/
   $this->setValidators(array(
    'username' => new sfValidatorString(array('min_length' =>5), array ('required' => 'Debe escribir apodo para identificarlo en la red', 'min_length' => 'El apodo debe tener al menos 5 caracteres')),
    'email' => new sfValidatorEmail(array('required' => false), array('invalid' => 'Por favor escriba un email v&aacutelido')),
	/*'password' => new sfValidatorRegex(array(
	'pattern' => '(^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])\w{5,8}$)'), array (
	'invalid' => 'El password debe tener al menos una letra min&uacutescula, una may&uacutescula, un n&uacutemero, no debe contener espacios y debe tener de 5 a 8 letras')),*/
	'password' => new sfValidatorString(array('min_length' =>5, 'max_length' => 10), array ('required' => 'Debe escribir una contrase&ntildea', 'min_length' => 'La contrase&ntildea debe tener al menos 5 caracteres', 'max_length' => 'La contraseña no debe exceder los 10 caracteres')),
	'password_again' => new sfValidatorPass(array(), array('required' => true)),
	'fecha_despues' => new sfValidatorDate(array('required' => false)),
	'titulo' => new sfValidatorString(),
	'nombre' => new sfValidatorString(array('min_length' =>3), array ('required' => 'Debe escribir el nombre', 'min_length' => 'El nombre debe tener al menos 3 caracteres')),
	'departamento' => new sfValidatorString(array('min_length' =>3), array ('required' => 'Debe escribir el departamento', 'min_length' => 'El departamento debe tener al menos 3 caracteres')),
	'apellidos' => new sfValidatorString(array('min_length' =>3), array ('required' => 'Debe escribir sus apellidos', 'min_length' => 'Sus apellidos deben tener al menos 3 caracteres')),
	'solapin' => new sfValidatorRegex(array ('pattern' => '(^[0-9]{4}$)')),
	'is_active' => new sfValidatorBoolean(),
	'groups_list' => new sfValidatorBoolean(array('required' => 'false')),
	
	
	'id' => new sfValidatorDoctrineChoice(array('model' => 'DmUser', 'column' => 'id', 'required' => false))
	));
  
   $this->validatorSchema->setPostValidator(
  new sfValidatorSchemaCompare('password', sfValidatorSchemaCompare::EQUAL, 'password_again',
    array(),
    array('invalid' => 'Por favor, verifique que coincidan las contraseñas.')
  )
);


$this->validatorSchema->setPostValidator(
	        new sfValidatorDoctrineUnique(array('model' => 'DmUser', 'column' => array('email')), array('invalid' => 'El email ya existe, por favor contacte al administrador si es el suyo '))
	    );

	$this->mergePostValidator(
			new sfValidatorDoctrineUnique(array('model' => 'DmUser', 'column' => array('username')), array('invalid' => 'Este apodo ya existe, por favor escoja otro'))
		);
  
  $this->mergePostValidator(
			new sfValidatorDoctrineUnique(array('model' => 'DmUser', 'column' => array('solapin')), array('invalid' => 'Este solapin ya existe, por favor escoja otro, si es el'))
		);

  }
}
