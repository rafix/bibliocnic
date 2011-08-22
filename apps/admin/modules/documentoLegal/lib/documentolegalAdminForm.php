<?php

/**
 * documentoLegal admin form
 *
 * @package    bibliocnic
 * @subpackage documentoLegal
 * @author     Your name here
 */
class documentolegalAdminForm extends BasedocumentolegalForm
{
  public function configure()
  {
    parent::configure();
	$this->widgetSchema['tipo_dc'] = new sfWidgetFormChoice(array( 'choices' => array('Decreto ley' => 'Decreto ley','Ley' => 'Ley', 'Reglamento' => 'Reglamento', 'Procedimiento' => 'Procedimiento', 'Resolucion' => 'Resolucion')));
	$this->validatorSchema['organismo'] = new sfValidatorString(array('min_length' =>3), array ('required' => 'Debe escribir el organismo', 'min_length' => 'El organismo debe tener al menos 3 caracteres'));
	$this->validatorSchema['tipo_dc'] = new sfValidatorString(array( 'required' => false));
	$this->validatorSchema['total_paginas'] = new sfValidatorRegex(array ('pattern' => '(^[0-9]+$)', 'required' => false), array('invalid' => 'El total de p&aacuteginas deber ser un n&uacutemero'));
  }
}