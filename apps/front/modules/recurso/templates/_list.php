<?php // Vars: $recursoPager

echo $recursoPager->renderNavigationTop();

echo _open('ul.elements');

foreach ($recursoPager as $recurso)
{
  echo _open('li.element');
     echo _tag('a.link', _link($recurso)->text($recurso->titulo));
	  if($recurso->resumen){
	  
	  echo markdown($recurso->resumen, '.resumen');}
	  else{
	  echo _tag('p.recurso_list', 'Sin resumen');
	  }
	  echo _tag('p.recurso_infos',
	  _tag('span', $recurso->createdAt).
	  '|'.
	  _tag('span', _link(sprintf('%s/list', $recurso->type)).
	  '|'.
	  _link($recurso)->text(__('Leer m&aacutes...'))
	  ));
	  

  echo _close('li');
}

echo _close('ul');

echo $recursoPager->renderNavigationBottom();