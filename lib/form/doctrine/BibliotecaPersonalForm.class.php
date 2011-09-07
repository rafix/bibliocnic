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
	$this->useFields(array('titulo', 'anno', 'resumen', 'idioma', 'palabras_claves', 'cant_registros', 'fecha_inicial', 'fecha_final', 'tematicas_list', 'slide_id_form'));
	
	 $this->validatorSchema['cant_registros'] = new sfValidatorRegex(array ('pattern' => '(^[0-9]+$)', 'required' => false), array('invalid' => 'La cantidad de registros deber ser un n&uacutemero'));
	 
	$this->widgetSchema['fecha_inicial'] = new sfWidgetFormJQueryDate(array(
            'image'        => '/images/calendar.png',
            'culture'     => 'ES',
            'config' => "{firstDay: 1,
                dayNamesMin: ['Do', 'Lu', 'Ma', 'Mi', 'Ju', 'Vi', 'Sa'],
                monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
                buttonText: ['Calendario'],
                minDate: new Date(),
                }",
            'date_widget'=>new sfWidgetFormDate(array('format'=>'%day%/%month%/%year%'))
    ));
    

$this->validatorSchema['fecha_inicial'] = new dmValidatorDate(array(
    'with_time' => false
	
	
));
$this->widgetSchema['fecha_final'] = new sfWidgetFormJQueryDate(array(
            'image'        => '/images/calendar.png',
            'culture'     => 'ES',
            'config' => "{firstDay: 1,
                dayNamesMin: ['Do', 'Lu', 'Ma', 'Mi', 'Ju', 'Vi', 'Sa'],
                monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
                buttonText: ['Calendario'],
                minDate: new Date(),
                }",
            'date_widget'=>new sfWidgetFormDate(array('format'=>'%day%/%month%/%year%'))
    ));
	

$this->validatorSchema['fecha_final'] = new dmValidatorDate(array(
    'with_time' => false
    
));
  }
}
