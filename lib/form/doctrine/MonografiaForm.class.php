<?php

/**
 * Monografia form.
 *
 * @package    bibliocnic
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormTemplate.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class MonografiaForm extends BaseMonografiaForm
{
  /**
   * @see RecursoForm
   */
  public function configure()
  {
    parent::configure();
	
	$this->useFields(array('titulo', 'anno', 'resumen', 'idioma', 'palabras_claves', 'ciudad_pub', 'editorial', 'total_paginas', 'tematicas_list', 'autors_list', 'slide_id_form'));
	
	$this->validatorSchema['ciudad_pub'] = new sfValidatorString(array('min_length' =>3, 'required' => false), array ('min_length' => 'La ciudad debe tener al menos 3 caracteres'));
	$this->validatorSchema['editorial'] = new sfValidatorString(array('min_length' =>3, 'required' => false), array('min_length' => 'La editorial debe tener al menos 3 caracteres'));
    $this->validatorSchema['isbn'] = new sfValidatorString(array('min_length' =>3, 'required' => false), array ('min_length' => 'El ISBN debe tener al menos 3 caracteres'));
	$this->validatorSchema['total_paginas'] = new sfValidatorRegex(array ('pattern' => '(^[0-9]+$)', 'required' => false), array('invalid' => 'El total de p&aacuteginas deber ser un n&uacutemero'));
	// $this->validatorSchema['num_inventario'] = new sfValidatorRegex(array ('pattern' => '(^[0-9]{4}$)', 'required' => false), array('invalid' => 'El n&uacutemero de inventario debe ser de 4 d&iacutegitos'));
	// $this->validatorSchema->setPostValidator( new sfValidatorDoctrineUnique(array(
  // 'model' => 'Recurso', 'column' => array('isbn')), array('invalid' => 'El isbn de una monograf&iacutea es &uacutenico')));
  // $this->mergePostValidator( new sfValidatorDoctrineUnique(array(
  // 'model' => 'Recurso', 'column' => array('num_inventario')), array('invalid' => 'El n. de inventario es &uacutenico')));
  }
}
