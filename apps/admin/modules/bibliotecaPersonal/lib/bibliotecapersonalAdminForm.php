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
	 
	 $this->widgetSchema['fecha_inicial'] = new sfWidgetFormFilterDate(array(  
      'from_date' => new sfWidgetFormDmDate(array(), array("style" => "float:none")),  
      'to_date' => new sfWidgetFormDmDate(array(), array("style" => "float:none")),  
      'template' => '%from_date% - %to_date% (desde - hasta)',  
      'with_empty' => true  
    ));  
    $this->validatorSchema['fecha_inicial'] = new sfValidatorDateRange(array(  
      'required' => false,  
      'from_date' => new dmValidatorDate(array('required' => false)),  
      'to_date' => new dmValidatorDate(array('required' => false))  
    ));
  }
}