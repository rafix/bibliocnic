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
	 
	/* $years = range(1900, date('Y'));
   

   
   $this->widgetSchema['fecha_antes'] = new sfWidgetFormDate(array('format' => '%year%', 'years' => array_combine($years, $years)));
   

   /*$this->widgetSchema['fecha_despues'] = new sfWidgetFormDate(array(/*'format' => '%year%', *//*'years' => array_combine($years, $years), 'default' => $today));  */ 
   $this->widgetSchema['fecha_antes'] = new sfWidgetFormChoice(array( 'choices' => array('' => '', 1900 => 1900, 1950 => 1950, 1960 => 1960, 1970 => 1970, 1980 => 1980, 1990 => 1990, 2000 => 2000, 2001 => 2001, 2002 => 2002, 2003 => 2003, 2004 => 2004, 2005 => 2005, 2006 => 2006, 2007 => 2007, 2008 => 2008, 2009 => 2009, 2010 => 2010, 2011 => 2011, 'Actualidad' => 'Actualidad')));
   $this->widgetSchema['fecha_despues'] = new sfWidgetFormChoice(array( 'choices' => array('' => '', 1900 => 1900, 1950 => 1950, 1960 => 1960, 1970 => 1970, 1980 => 1980, 1990 => 1990, 2000 => 2000, 2001 => 2001, 2002 => 2002, 2003 => 2003, 2004 => 2004, 2005 => 2005, 2006 => 2006, 2007 => 2007, 2008 => 2008, 2009 => 2009, 2010 => 2010, 2011 => 2011, 'Actualidad' => 'Actualidad'))); 
   

	
	
	 $this->setValidators(array(
	'is_active' => new sfValidatorBoolean(), 
    'fecha_antes' => new sfValidatorString(array('required' => false)),
	'fecha_despues' => new sfValidatorString(array('required' => false)),
    'mensaje' => new sfValidatorString(array('min_length' => 20), array('required'   => 'Por favor describa la respuesta', 'min_length' => 'Por favor describa mejor su busqueda(al menos 20 caracteres) ')),
	'titulo' => new sfValidatorString(array('min_length' => 10), array('required'   => 'Por favor escriba un t&iacutetulo', 'min_length' => 'Por favor describa mejor su t&iacutetulo(al menos 10 caracteres) ')),
	'dm_user_id' => new sfValidatorString(array('required' => true), array('required' => 'Debe escoger un usuario')),
	'tematica' => new sfValidatorString(array('required' => true), array('required' => 'Debe escoger una tematica')),
	'id' => new sfValidatorDoctrineChoice(array('model' => 'busqueda', 'column' => 'id', 'required' => false))
	));
  }
}