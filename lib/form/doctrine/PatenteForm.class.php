<?php

/**
 * Patente form.
 *
 * @package    bibliocnic
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormTemplate.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class PatenteForm extends BasePatenteForm
{
  /**
   * @see RecursoForm
   */
  public function configure()
  {
    parent::configure();
	$this->useFields(array('titulo', 'anno', 'resumen', 'idioma', 'palabras_claves', 'pais', 'institucion', 'total_paginas', 'num_internacional', 'tematicas_list', 'autors_list', 'slide_id_form'));
	
	$this->widgetSchema['pais'] = new sfWidgetFormChoice(array( 'choices' => array('Alemania' => 'Alemania', 'Angola' => 'Angola', 'Belgica' => 'Belgica', 'Bolivia' => 'Bolivia', 'Brasil' => 'Brasil', 'Canada' => 'Canada', 'Colombia' => 'Colombia', 'Chile' => 'Chile', 'Cuba' => 'Cuba', 'China' => 'China', 'Dinamarca' => 'Dinamarca', 'Donimicana' => 'Dominicana', 'Etiopia' => 'Etiopia', 'Ecuador' => 'Ecuador', 'EUA' => 'EUA', 'Francia' => 'Francia', 'Finlandia' => 'Finlandia', 'Granada' => 'Granada', 'Holanda' => 'Holanda', 'Honduras' => 'Honduras', 'Italia' => 'Italia', 'Inglaterra' => 'Inglaterra', 'Japon' => 'Japon', 'Kenia' => 'Kenia', 'Mexico' => 'Mexico', 'Noruega' => 'Noruega', 'Portugal' => 'Portugal', 'PuertoRico' => 'PuertoRico', 'Polonia' => 'Polonia', 'Rusia' => 'Russia', 'RepublicaCheca' => 'RepublicaCheca', 'Rumania' => 'Rumania', 'Suecia' => 'Suecia', 'Turquia' => 'Turquia', 'Ukrania' => 'Ukrania', 'Venezuela' => 'Venezuela')));
	$this->validatorSchema['pais'] = new sfValidatorString(array( 'required' => false));
	$this->validatorSchema['num_internacional'] = new sfValidatorString(array('min_length' =>10), array ('required' => 'Debe escribir el n&uacutemero de publicaci&oacuten', 'min_length' => 'El n&uacutemero de publicaci&oacuten debe tener al menos 10 caracteres'));
	$this->validatorSchema['total_paginas'] = new sfValidatorRegex(array ('pattern' => '(^[0-9]+$)', 'required' => false), array('invalid' => 'El total de p&aacuteginas deber ser un n&uacutemero'));
	$this->validatorSchema['institucion'] = new sfValidatorString(array('min_length' =>3), array ('required' => 'Debe escribir la instituci&oacuten', 'min_length' => 'La instituci&oacuten debe tener al menos 3 caracteres'));
	$this->validatorSchema['id'] = new sfValidatorDoctrineChoice(array('model' =>'Recurso','column' => 'id', 'required' => false));
	
	
	
	
  }
}
 