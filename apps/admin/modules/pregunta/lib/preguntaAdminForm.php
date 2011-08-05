<?php

/**
 * pregunta admin form
 *
 * @package    bibliocnic
 * @subpackage pregunta
 * @author     Your name here
 */
class preguntaAdminForm extends BasepreguntaForm
{
  public function configure()
  {
    parent::configure();
	$this->setValidators(array(
    
    'mensaje' => new sfValidatorString(array('min_length' => 20), array('required'   => 'Por favor describa la pregunta', 'min_length' => 'Por favor describa mejor su pregunta(al menos 20 caracteres) ')),
	'titulo' => new sfValidatorString(array('min_length' => 10), array('required'   => 'Por favor escriba un t&iacutetulo', 'min_length' => 'Por favor describa mejor su t&iacutetulo(al menos 10 caracteres) ')),
	'dm_user_id' => new sfValidatorString(array('required' => true), array('required' => 'Debe escoger un usuario')),
	
	'id' => new sfValidatorDoctrineChoice(array('model' => 'respuestab', 'column' => 'id', 'required' => false))
	));
  }
}