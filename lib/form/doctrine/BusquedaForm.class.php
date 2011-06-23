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
    $years = range(1900, date('Y'));
   
  $today = array(
                'year'  => date('Y'),       
                'month' => date('n'),
                'day'   => date('j')
);
   
   $this->widgetSchema['fecha_antes'] = new sfWidgetFormDate(array(/*'format' => '%year%', */'years' => array_combine($years, $years), 'default' => $today));
   

   $this->widgetSchema['fecha_despues'] = new sfWidgetFormDate(array(/*'format' => '%year%', */'years' => array_combine($years, $years), 'default' => $today));   
   
   $this->widgetSchema->setLabels(array(
      'fecha_antes'    => 'Publicado entre',
      'fecha_despues'      => 'Y',
      
    ));
   $this->setValidators(array(
    'titulo' => new sfValidatorString(array('min_length' =>10), array ('required' => 'Debe escribir un titulo sugerente', 'min_length' => 'El titulo debe tener al menos 10 caracteres')),
    'mensaje' => new sfValidatorString(array('min_length' => 20), array('required'   => 'Por favor describa su busqueda', 'min_length' => 'Por favor describa mejor su busqueda(al menos 20 caracteres) ')),
	'tematica' => new sfValidatorString(),
	'fecha_antes' => new sfValidatorDate(array('required' => false)),
	'fecha_despues' => new sfValidatorDate(array('required' => false)),
	'id' => new sfValidatorDoctrineChoice(array('model' => 'busqueda', 'column' => 'id', 'required' => false))
	));
 $this->validatorSchema->setPostValidator(
  new sfValidatorSchemaCompare('fecha_antes', sfValidatorSchemaCompare::LESS_THAN_EQUAL, 'fecha_despues',
    array(),
    array('invalid' => 'La primera fecha ("%left_field%") debe ser menor que la ultima ("%right_field%")')
  )
);
	}
}
?>