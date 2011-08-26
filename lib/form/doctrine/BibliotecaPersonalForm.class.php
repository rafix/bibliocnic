<?php

/**
 * BibliotecaPersonal form.
 *
 * @package    bibliocnic
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormTemplate.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class BibliotecaPersonalForm extends BaseBibliotecaPersonalForm
{
  /**
   * @see RecursoForm
   */
  public function configure()
  {
    parent::configure();
	
	 $this->validatorSchema['cant_registros'] = new sfValidatorRegex(array ('pattern' => '(^[0-9]+$)', 'required' => false), array('invalid' => 'La cantidad de registros deber ser un n&uacutemero'));
	 
	$this->widgetSchema['fecha_inicial'] = new sfWidgetFormDmDate(array(
    'format' => '%month%/%day%/%year%',
    'with_time' => false,
    'required' => false
));
$this->validatorSchema['fecha_inicial'] = new dmValidatorDate(array(
    'with_time' => false,
	'required' => false
	
));
$this->widgetSchema['fecha_final'] = new sfWidgetFormDmDate(array(
    'format' => '%month%/%day%/%year%',
    'with_time' => false,
	'required' => false
));
$this->validatorSchema['fecha_final'] = new dmValidatorDate(array(
    'with_time' => false,
    'required' => false
));
  }
}
