<?php

/**
 * respuestaBusqueda admin form
 *
 * @package    bibliocnic
 * @subpackage respuestaBusqueda
 * @author     Your name here
 */
class respuestabAdminForm extends BaserespuestabForm
{
  public function configure()
  {
    parent::configure();
	 unset($this['created_at'], $this['updated_at']);
	 $this->setValidators(array(
    
    'mensaje' => new sfValidatorString(array('min_length' => 20), array('required'   => 'Por favor describa la respuesta', 'min_length' => 'Por favor describa mejor su busqueda(al menos 20 caracteres) ')),
	'busqueda_id' => new sfValidatorString(array('required' => true), array('required' => 'Debe escoger una busqueda')),
	
	'id' => new sfValidatorDoctrineChoice(array('model' => 'respuestab', 'column' => 'id', 'required' => false))
	));
  }
}