<?php

/**
 * monografia admin form
 *
 * @package    bibliocnic
 * @subpackage monografia
 * @author     Your name here
 */
class monografiaAdminForm extends BasemonografiaForm
{
  public function configure()
  {
    parent::configure();
	$this->validatorSchema['ciudad_pub'] = new sfValidatorString(array('min_length' =>3, 'required' => false), array ('min_length' => 'La ciudad debe tener al menos 3 caracteres'));
	$this->validatorSchema['editorial'] = new sfValidatorString(array('min_length' =>3), array ('required' => false, 'min_length' => 'La editorial debe tener al menos 3 caracteres'));
    $this->validatorSchema['isbn'] = new sfValidatorString(array('min_length' =>3, 'required' => false), array ('min_length' => 'El ISBN debe tener al menos 3 caracteres'));
	$this->validatorSchema['total_paginas'] = new sfValidatorRegex(array ('pattern' => '(^[0-9]+$)', 'required' => false), array('invalid' => 'El total de p&aacuteginas deber ser un n&uacutemero'));
	$this->validatorSchema->setPostValidator( new sfValidatorDoctrineUnique(array(
  'model' => 'Recurso', 'column' => array('isbn')), array('invalid' => 'El isbn de una monograf&iacutea es &uacutenico')));
  }
}