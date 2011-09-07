<?php

/**
 * Autor form.
 *
 * @package    bibliocnic
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormTemplate.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class AutorForm extends BaseAutorForm
{
  public function configure()
  {
  $this->useFields(array('nombre', 'apellidos'));
  $this->validatorSchema['nombre'] = new sfValidatorRegex(array ('pattern' => '(^[a-zA-Z ]+$)', 'required' => false), array('invalid' => 'El nombre no debe contener n&uacutemeros o s&iacutembolos'));
	$this->validatorSchema['apellidos'] = new sfValidatorRegex(array ('pattern' => '(^[a-zA-Z ]+$)', 'required' => false), array('invalid' => 'Los apellidos no deben contener n&uacutemeros o s&iacutembolos'));
  }
}
