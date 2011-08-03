<?php

/**
 * busqueda admin form
 *
 * @package    bibliocnic
 * @subpackage busqueda
 * @author     Your name here
 */
class BusquedaAdminForm extends BaseBusquedaForm
{
  public function configure()
  {
    parent::configure();
	 unset($this['created_at'], $this['updated_at']);
	 
	 $years = range(1900, date('Y'));
   
  $today = array(
                'year'  => date('Y'),       
                'month' => date('n'),
                'day'   => date('j')
);
   
   $this->widgetSchema['fecha_antes'] = new sfWidgetFormDate(array(/*'format' => '%year%', */'years' => array_combine($years, $years), 'default' => $today));
   

   $this->widgetSchema['fecha_despues'] = new sfWidgetFormDate(array(/*'format' => '%year%', */'years' => array_combine($years, $years), 'default' => $today));   
   
   $this->widgetSchema->setLabels(array(
      'fecha_antes'    => 'Publicado entre',
      'fecha_despues'      => 'Y',
      
    ));
	$arreglo = array(
	'0' => 0,
	'1' => 1
	);
	 $this->setValidators(array(
	'is_active' => new sfValidatorBoolean(), 
    'fecha_antes' => new sfValidatorDate(array('required' => false)),
	'fecha_despues' => new sfValidatorDate(array('required' => false)),
    'mensaje' => new sfValidatorString(array('min_length' => 20), array('required'   => 'Por favor describa la respuesta', 'min_length' => 'Por favor describa mejor su busqueda(al menos 20 caracteres) ')),
	'titulo' => new sfValidatorString(array('min_length' => 10), array('required'   => 'Por favor escriba un t&iacutetulo', 'min_length' => 'Por favor describa mejor su t&iacutetulo(al menos 10 caracteres) ')),
	'dm_user_id' => new sfValidatorString(array('required' => true), array('required' => 'Debe escoger un usuario')),
	'tematica' => new sfValidatorString(array('required' => true), array('required' => 'Debe escoger una tematica')),
	'id' => new sfValidatorDoctrineChoice(array('model' => 'respuestab', 'column' => 'id', 'required' => false))
	));
  }
}