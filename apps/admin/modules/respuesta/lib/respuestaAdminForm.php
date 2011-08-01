<?php

/**
 * respuesta admin form
 *
 * @package    bibliocnic
 * @subpackage respuesta
 * @author     Your name here
 */
class respuestaAdminForm extends BaserespuestaForm
{
  public function configure()
  {
    parent::configure();
	unset($this['created_at'], $this['updated_at']);
  }
}