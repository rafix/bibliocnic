<?php

/**
 * articulo admin form
 *
 * @package    bibliocnic
 * @subpackage articulo
 * @author     Your name here
 */
class ArticuloAdminForm extends BaseArticuloForm
{
  public function configure()
  {
    parent::configure();
  $this->validatorSchema['volumen'] = new sfValidatorRegex(array ('pattern' => '(^[0-9]+$)', 'required' => true), array('required' => 'Por favor introduzca el volumen de la revista','invalid' => 'El volumen deber ser un n&uacutemero'));
  $this->validatorSchema['num_revista'] = new sfValidatorRegex(array ('pattern' => '(^[0-9]+$)', 'required' => true), array('required'=>'Por favor introduzca el n&uacutemero de revista', 'invalid' => 'El No. de revista deber ser un n&uacutemero'));
  $this->validatorSchema['pagina_inicial'] = new sfValidatorRegex(array ('pattern' => '(^[0-9]+$)', 'required' => false), array('invalid' => 'La p&aacutegina inicial deber ser un n&uacutemero'));
  $this->validatorSchema['pagina_final'] = new sfValidatorRegex(array ('pattern' => '(^[0-9]+$)', 'required' => false), array('invalid' => 'La p&aacutegina final deber ser un n&uacutemero'));
  $this->validatorSchema['issn'] = new sfValidatorString(array('min_length' =>3, 'required' => false), array ('min_length' => 'El ISSN debe tener al menos 3 caracteres'));
  
    $this->mergePostValidator( new sfValidatorDoctrineUnique(array(
  'model' => 'Recurso', 'column' => array('issn'), 'required' => false), array('invalid' => 'El issn de una revista es &uacutenico')));

    $this->mergePostValidator( new sfValidatorSchemaCompare('pagina_inicial', sfValidatorSchemaCompare::LESS_THAN_EQUAL, 'pagina_final',
    array(),
    array('invalid' => 'La primera p&aacutegina ("%left_field%") debe ser menor que la &uacuteltima ("%right_field%")')));
  }
}