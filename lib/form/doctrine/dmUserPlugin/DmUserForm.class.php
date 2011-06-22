<?php

/**
 * DmUser form.
 *
 * @package    bibliocnic
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id$
 */
class DmUserForm extends PluginDmUserForm
{
  public function configure()
  {
  unset($this['penalizado'], $this['recursos_list']);
  $this->widgetSchema->setLabels(array(
      'foto_id_form'    => 'Subir foto',
      'username'      => 'Apodo de usuario',
      
    ));
   $this->setValidators(array(
    'username' => new sfValidatorString(array('min_length' =>5), array ('required' => 'Debe escribir apodo para identificarlo en la red', 'min_length' => 'El apodo debe tener al menos 5 caracteres')),
    'email' => new sfValidatorEmail(array(), array('invalid' => 'Por favor escriba un email v&aacutelido')),
	'tematica' => new sfValidatorString(),
	'fecha_antes' => new sfValidatorDate(array('required' => false)),
	'fecha_despues' => new sfValidatorDate(array('required' => false)),
	'id' => new sfValidatorDoctrineChoice(array('model' => 'busqueda', 'column' => 'id', 'required' => false))
	));
  
  
  
  
  
  
  }
}