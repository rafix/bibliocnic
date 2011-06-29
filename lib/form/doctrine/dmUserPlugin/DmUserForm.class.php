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
      'username'      => 'Apodo dentificador',
      'titulo'       => 'Grado de escolaridad'
    ));
   $this->setValidators(array(
    'username' => new sfValidatorString(array('min_length' =>5), array ('required' => 'Debe escribir apodo para identificarlo en la red', 'min_length' => 'El apodo debe tener al menos 5 caracteres')),
    'email' => new sfValidatorEmail(array(), array('invalid' => 'Por favor escriba un email v&aacutelido')),
	/*'password' => new sfValidatorRegex(array(
	'pattern' => '(^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])\w{5,8}$)'), array (
	'invalid' => 'El password debe tener al menos una letra min&uacutescula, una may&uacutescula, un n&uacutemero, no debe contener espacios y debe tener de 5 a 8 letras')),*/
	'password' => new sfValidatorString(array('min_length' =>5, 'max_length' => 10), array ('required' => 'Debe escribir una contraseña', 'min_length' => 'La contraseña debe tener al menos 5 caracteres', 'max_length' => 'La contraseña no debe exceder los 10 caracteres')),
	'password_again' => new sfValidatorPass(array(), array('required' => true)),
	'fecha_despues' => new sfValidatorDate(array('required' => false)),
	'titulo' => new sfValidatorString(),
	'nombre' => new sfValidatorString(array('min_length' =>3), array ('required' => 'Debe escribir el nombre', 'min_length' => 'El nombre debe tener al menos 3 caracteres')),
	'departamento' => new sfValidatorString(array('min_length' =>3), array ('required' => 'Debe escribir el departamento', 'min_length' => 'El departamento debe tener al menos 3 caracteres')),
	'apellidos' => new sfValidatorString(array('min_length' =>3), array ('required' => 'Debe escribir sus apellidos', 'min_length' => 'Sus apellidos deben tener al menos 3 caracteres')),
	'solapin' => new sfValidatorRegex(array ('pattern' => '(^[0-9]{4}$)')),
	
	'id' => new sfValidatorDoctrineChoice(array('model' => 'DmUser', 'column' => 'id', 'required' => false))
	));
  
   $this->validatorSchema->setPostValidator(
  new sfValidatorSchemaCompare('password', sfValidatorSchemaCompare::EQUAL, 'password_again',
    array(),
    array('invalid' => 'Por favor, verifique que coincidan las contraseñas.')
  )
);

$this->validatorSchema->setPostValidator(
	        new sfValidatorDoctrineUnique(array('model' => 'DmUser', 'column' => array('email')), array('invalid' => 'El email ya existe, por favor contacte al administrador si es el suyo '))
	    );

	$this->mergePostValidator(
			new sfValidatorDoctrineUnique(array('model' => 'DmUser', 'column' => array('username')), array('invalid' => 'Este apodo ya existe, por favor escoja otro'))
		);
  
  $this->mergePostValidator(
			new sfValidatorDoctrineUnique(array('model' => 'DmUser', 'column' => array('solapin')), array('invalid' => 'Este solapin ya existe, por favor escoja otro, si es el'))
		);
  }
}