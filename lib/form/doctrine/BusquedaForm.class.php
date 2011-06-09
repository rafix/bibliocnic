<?php

/**
 * Busqueda form.
 *
 * @package    bibliocnic
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrineFormTemplate.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class BusquedaForm extends BaseBusquedaForm
{
  public function configure()
  {
    unset($this['user_id'], $this['created_at'], $this['updated_at'], $this['is_active']);
    $this->getObject()->setUserId( sfcontext::getInstance()->getUser()->getAttribute(  'user_id', ' ' ,'dmSecurityUser'  ));
   $this->validatorSchema->setOption('allow_extra_fields', true);
   $this->setValidators(array(
    'titulo'    => new sfValidatorString(),
    'mensaje' => new sfValidatorString(array('min_length' => 10), array(
    'required'   => 'Por favor describa su busqueda',
    'min_length' => 'Please provide a longer message (at least 4 characters)'
  ))
));
  }
}
?>