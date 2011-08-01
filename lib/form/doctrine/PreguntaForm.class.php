<?php

/**
 * Pregunta form.
 *
 * @package    bibliocnic
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormTemplate.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class PreguntaForm extends BasePreguntaForm
{
  public function configure()
  {
   unset($this['dm_user_id'], $this['created_at'], $this['updated_at'], $this['is_active']);
    $this->getObject()->setDmUserId( sfcontext::getInstance()->getUser()->getAttribute(  'user_id', ' ' ,'dmSecurityUser'  ));
   $this->setValidators(array(
    'titulo' => new sfValidatorString(array('min_length' =>10), array ('required' => 'Debe escribir un titulo sugerente', 'min_length' => 'El titulo debe tener al menos 10 caracteres')),
    'mensaje' => new sfValidatorString(array('min_length' => 20), array('required'   => 'Por favor describa su pregunta', 'min_length' => 'Por favor describa mejor su pregunta(al menos 20 caracteres) ')),
	
	'id' => new sfValidatorDoctrineChoice(array('model' => 'busqueda', 'column' => 'id', 'required' => false))
	));
  
  
  
  
  }
}
