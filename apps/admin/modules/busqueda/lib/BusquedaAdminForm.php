<?php

/**
 * busqueda admin form
 *
 * @package    bibliocnic
 * @subpackage busqueda
 * @author     Your name here
 */
class BusquedaAdminForm extends BaseBusquedaForm
{
  public function configure()
  {
    parent::configure();
	 unset($this['created_at'], $this['updated_at']);
  }
}