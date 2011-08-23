<?php

/**
 * presentacion admin form
 *
 * @package    bibliocnic
 * @subpackage presentacion
 * @author     Your name here
 */
class PresentacionAdminForm extends BasePresentacionForm
{
  public function configure()
  {
    parent::configure();
	$this->validatorSchema['num_diapositivas'] = new sfValidatorRegex(array ('pattern' => '(^[0-9]+$)', 'required' => false), array('invalid' => 'El No. de diapositivas deber ser un n&uacutemero'));
  }
}