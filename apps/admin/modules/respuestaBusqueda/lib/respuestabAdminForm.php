<?php

/**
 * respuestaBusqueda admin form
 *
 * @package    bibliocnic
 * @subpackage respuestaBusqueda
 * @author     Your name here
 */
class respuestabAdminForm extends BaserespuestabForm
{
  public function configure()
  {
    parent::configure();
	 unset($this['created_at'], $this['updated_at']);
  }
}