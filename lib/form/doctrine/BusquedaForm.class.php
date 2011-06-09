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
  }
}
?>