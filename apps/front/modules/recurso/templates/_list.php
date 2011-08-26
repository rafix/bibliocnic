<?php // Vars: $recursoPager
use_helper('Date');
echo $recursoPager->renderNavigationTop();

echo _open('ul.elements');

foreach ($recursoPager as $recurso)
{
  echo _open('li.element');
     echo _link($recurso)->set('.titulo_link')->text($recurso->titulo);
	  if($recurso->resumen){
	  
	  echo markdown($recurso->resumen, '.resumen');}
	  else{
	  echo _tag('p.recurso_list', 'Sin resumen');
	  }
	  echo _tag('p.recurso_infos',
	  _tag('span', format_date($recurso->createdAt, 'D')).
	  '|'.
	  _tag('span', _link(sprintf('%s/list', $recurso->type)).
	  '|'.
	  _link($recurso)->text(__('Leer m&aacutes...'))
	  ));
	  

  echo _close('li');
}

echo _close('ul');

echo $recursoPager->renderNavigationBottom();