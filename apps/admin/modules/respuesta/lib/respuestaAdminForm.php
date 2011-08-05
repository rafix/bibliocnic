<?php

/**
 * respuesta admin form
 *
 * @package    bibliocnic
 * @subpackage respuesta
 * @author     Your name here
 */
class respuestaAdminForm extends BaserespuestaForm
{
  public function configure()
  {
    parent::configure();
	unset($this['created_at'], $this['updated_at']);
	$this->setValidators(array(
    
    'mensaje' => new sfValidatorString(array('min_length' => 20), array('required'   => 'Por favor describa la pregunta', 'min_length' => 'Por favor describa mejor su pregunta(al menos 20 caracteres) ')),
	'pregunta_id' => new sfValidatorString(array('required' => true), array('required' => 'Debe escoger una pregunta')),
	
	'id' => new sfValidatorDoctrineChoice(array('model' => 'respuestab', 'column' => 'id', 'required' => false))
	));
  }
}