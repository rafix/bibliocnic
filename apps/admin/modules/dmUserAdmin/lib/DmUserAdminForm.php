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
      
    
  public function configure()
  {
$this->validatorSchema['username'] = new sfValidatorString(array('min_length' =>5), array ('required' => 'Debe escribir apodo para identificarlo en la red', 'min_length' => 'El apodo debe tener al menos 5 caracteres'));
$this->validatorSchema['password'] = new sfValidatorString(array('min_length' =>5, 'max_length' => 10), array ('required' => 'Debe escribir una contrase&ntildea', 'min_length' => 'La contrase&ntildea debe tener al menos 5 caracteres', 'max_length' => 'La contrase&ntildea no debe exceder los 10 caracteres'));
$this->validatorSchema['email'] = new sfValidatorEmail(array(), array ('invalid' => 'Por favor escriba un email v&aacutelido'));
$this->validatorSchema['solapin'] = new sfValidatorRegex(array ('pattern' => '(^[0-9]{4}$)'), array('invalid' => 'El No. de solap&iacuten deber ser de 4 d&iacutegitos'));
$this->validatorSchema['penalizado'] = new sfValidatorBoolean();

$this->validatorSchema->setPostValidator( new sfValidatorDoctrineUnique(array('model' => 'DmUser', 'column' => array('email')), array('invalid' => 'El email ya existe, por favor contacte al administrador si es el suyo'))
	    );

	$this->mergePostValidator( new sfValidatorDoctrineUnique(array('model' => 'DmUser', 'column' => array('username')), array('invalid' => 'Este apodo ya existe, por favor escoja otro'))
		);
  
  $this->mergePostValidator( new sfValidatorDoctrineUnique(array('model' => 'DmUser', 'column' => array('solapin')), array('invalid' => 'Este solapin ya existe, por favor escoja otro, si es el suyo contacte al administrador'))
		);
   $this->mergePostValidator(new sfValidatorSchemaCompare('password', sfValidatorSchemaCompare::EQUAL, 'password_again',
    array(),
    array('invalid' => 'Por favor, verifique que coincidan las contrase&ntildeas.')
  )
);
 

  }

  protected function createMediaFormForFotoId()  
  {  
    // get the DmMedia form  
    $form = parent::createMediaFormForFotoId();  
 
    // choose mime types allowed  
    $form->setMimeTypeWhiteList(array(  
      'image/jpeg',  
      'image/png'  
    ));  
 
    // remove unnecessary fields  
    unset($form['legend'], $form['author'], $form['license']);  
 
    return $form;  
  }
}

