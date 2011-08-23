<?php

/**
 * DocumentoLegal form.
 *
 * @package    bibliocnic
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormTemplate.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class DocumentoLegalForm extends BaseDocumentoLegalForm
{
  /**
   * @see RecursoForm
   */
  public function configure()
  {
    parent::configure();
	$this->widgetSchema['tipo_dc'] = new sfWidgetFormChoice(array( 'choices' => array('Decreto ley' => 'Decreto ley','Ley' => 'Ley', 'Reglamento' => 'Reglamento', 'Procedimiento' => 'Procedimiento', 'Resolucion' => 'Resolucion')));
	$this->validatorSchema['organismo'] = new sfValidatorString(array('min_length' =>3), array ('required' => 'Debe escribir el organismo', 'min_length' => 'El organismo debe tener al menos 3 caracteres'));
	$this->validatorSchema['tipo_dc'] = new sfValidatorString(array( 'required' => false));
	$this->validatorSchema['total_paginas'] = new sfValidatorRegex(array ('pattern' => '(^[0-9]+$)', 'required' => false), array('invalid' => 'El total de p&aacuteginas deber ser un n&uacutemero'));
  }
}
