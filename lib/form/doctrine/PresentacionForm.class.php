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
   

  public function configure()
  {
    parent::configure();
	$this->validatorSchema['num_diapositivas'] = new sfValidatorRegex(array ('pattern' => '(^[0-9]+$)', 'required' => false), array('invalid' => 'El No. de diapositivas deber ser un n&uacutemero'));
  }
}
