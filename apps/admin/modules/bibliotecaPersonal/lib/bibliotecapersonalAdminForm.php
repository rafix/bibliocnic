<?php

/**
 * bibliotecaPersonal admin form
 *
 * @package    bibliocnic
 * @subpackage bibliotecaPersonal
 * @author     Your name here
 */
class bibliotecapersonalAdminForm extends BasebibliotecapersonalForm
{
  public function configure()
  {
    parent::configure();
	 $this->validatorSchema['cant_registros'] = new sfValidatorRegex(array ('pattern' => '(^[0-9]+$)', 'required' => false), array('invalid' => 'La cantidad de registros deber ser un n&uacutemero'));
	 
	$this->widgetSchema['fecha_inicial'] = new sfWidgetFormDmDate(array(
    'format' => '%month%/%day%/%year%',
    'with_time' => false
    
));
$this->validatorSchema['fecha_inicial'] = new dmValidatorDate(array(
    'with_time' => false
	
	
));
$this->widgetSchema['fecha_final'] = new sfWidgetFormDmDate(array(
    'format' => '%month%/%day%/%year%',
    'with_time' => false
	
));
$this->validatorSchema['fecha_final'] = new dmValidatorDate(array(
    'with_time' => false
    
));


  }
}