<?php

/**
 * autor admin form
 *
 * @package    bibliocnic
 * @subpackage autor
 * @author     Your name here
 */
class AutorAdminForm extends BaseAutorForm
{
  public function configure()
  {
    parent::configure();
	$this->validatorSchema['nombre'] = new sfValidatorRegex(array ('pattern' => '(^[a-zA-Z ]+$)', 'required' => false), array('invalid' => 'El nombre no debe contener n&uacutemeros o s&iacutembolos'));
	$this->validatorSchema['apellidos'] = new sfValidatorRegex(array ('pattern' => '(^[a-zA-Z ]+$)', 'required' => false), array('invalid' => 'Los apellidos no deben contener n&uacutemeros o s&iacutembolos'));
  }
}