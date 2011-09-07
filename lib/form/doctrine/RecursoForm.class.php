<?php

/**
 * Recurso form.
 *
 * @package    bibliocnic
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormTemplate.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class RecursoForm extends BaseRecursoForm
{
  protected function createMediaFormForSlideId()
  {
    // get the DmMedia form
  $form = parent::createMediaFormForSlideId();

    // choose mime types allowed
    $form->setMimeTypeWhiteList(array(
      'application/pdf'
	  

	  
    ));
    $form->setMimeTypeMaxSize(5512000);
    // remove unnecessary fields
    unset($form['legend'], $form['author'], $form['license']);

    return $form;
  }
  public function configure()
  {
  
  



$this->widgetSchema->setLabels(array(
      'tipo'    => 'Tipo de tesis',
      'tipo_dc'      => 'Tipo de documento',
      'formato_duro'       => '¿Recurso digital?',
	  'anno'       => 'A&ntildeo de publicaci&oacuten/creaci&oacuten',
	  'num_internacional'       => 'N&uacutemero de publicaci&oacuten',
	  'total_paginas'      => 'Total de p&aacuteginas',
	  'num_revista'      => 'N&uacutemero de revista',
	  'cant_registros'      => 'Cantidad de registros',
	  'num_diapositivas'      => 'N&uacutemero de diapositivas',
	  'palabras_claves'      => 'Palabras claves',
	  'pagina_inicial'      => 'P&aacutegina inicial',
	  'pagina_final'      => 'P&aacutegina final',
	  'fecha_inicial'      => 'Fecha inicial',
	  'fecha_final'      => 'Fecha final',
	  'ciudad_pub'       => 'Ciudad de publicaci&oacuten',
	  'autors_list' => 'Autor/Autores',
	  'slide_id_form'=> 'Subir fichero',
	  'autors_list' => 'Autor/Autores'
    ));
  
  
  
  
  $this->widgetSchema['idioma'] = new sfWidgetFormChoice(array( 'choices' => array('es' => 'es', 'en' => 'en', 'pt' => 'pt', 'ru' => 'ru', 'fr' => 'fr', 'it' => 'it', 'chi' => 'chi', 'jp' => 'jp', 'nd' => 'nd')));
  
  $this->validatorSchema['titulo'] = new sfValidatorString(array('min_length' =>3), array ('required' => 'Debe escribir el t&iacutetulo del recurso', 'min_length' => 'El t&iacutetulo debe tener al menos 3 caracteres'));
  $this->validatorSchema['anno'] = new sfValidatorRegex(array ('pattern' => '(^[0-9]{4}$)', 'required' => false), array('invalid' => 'El a&ntilde deber ser un n&uacutemero de 4 d&iacutetos'));
  $this->validatorSchema['resumen'] = new sfValidatorString(array('min_length' =>30, 'required' => false,), array ( 'min_length' => 'El resumen debe tener al menos 30 caracteres'));
  
  
  $this->validatorSchema['idioma'] = new sfValidatorString(array( 'required' => false));
  
  $this->validatorSchema['prestado'] = new sfValidatorBoolean();
  $this->validatorSchema['is_active'] = new sfValidatorBoolean();
  $this->validatorSchema['formato_duro'] = new sfValidatorBoolean();
  
 #$this->validatorSchema['type'] = new sfValidatorDoctrineChoice(array('model' => 'Recurso', 'column' => 'type', 'required' => true));

  $this->validatorSchema['palabras_claves'] = new sfValidatorString(array('min_length' =>3, 'required' => true), array ('required' => 'Es necesario que escriba las palabras claves', 'min_length' => 'La palabra clave debe tener al menos 3 caracteres'));
  $this->validatorSchema['id'] = new sfValidatorDoctrineChoice(array('model' =>'Recurso','column' => 'id', 'required' => false));
  
  
  
  
	
  
  
  }
}
