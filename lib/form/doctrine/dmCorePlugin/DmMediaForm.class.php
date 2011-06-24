<?php

/**
 * DmMedia form.
 *
 * @package    bibliocnic
 * @subpackage form
 * @author     Your name here
 * @version    SVN: $Id: sfDoctrinePluginFormTemplate.php 23810 2009-11-12 11:07:44Z Kris.Wallsmith $
 */
class DmMediaForm extends PluginDmMediaForm
{
  public function configure()
  {
  unset($this['legend'], $this['author'], $this['license']);
  }
}
