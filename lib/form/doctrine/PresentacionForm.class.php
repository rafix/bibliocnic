<?php

/**
 * Presentacion form.
 *
 * @package    bibliocnic
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormTemplate.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class PresentacionForm extends BasePresentacionForm
{
  /**
   * @see RecursoForm
   */
     protected function createMediaFormForSlideId()
  {
    // get the DmMedia form
  $form = parent::createMediaFormForSlideId();

    // choose mime types allowed
    $form->setMimeTypeWhiteList(array(
      
	  'application/vnd.ms-office',
	  
	));
    $form->setMimeTypeMaxSize(5512000);
    // remove unnecessary fields
    unset($form['legend'], $form['author'], $form['license']);

    return $form;
  }

  public function configure()
  {
    parent::configure();
	$this->useFields(array('titulo', 'anno', 'resumen', 'idioma', 'palabras_claves', 'num_diapositivas', 'tematicas_list', 'slide_id_form'));
	$this->validatorSchema['num_diapositivas'] = new sfValidatorRegex(array ('pattern' => '(^[0-9]+$)', 'required' => false), array('invalid' => 'El No. de diapositivas deber ser un n&uacutemero'));
  }
}
