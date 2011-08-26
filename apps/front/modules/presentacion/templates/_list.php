<?php // Vars: $presentacionPager
use_helper('Date');
echo $presentacionPager->renderNavigationTop();

echo _open('ul.elements');

foreach ($presentacionPager as $presentacion)
{
  echo _open('li.element');
echo _link($presentacion)->set('.titulo_link')->text($presentacion->titulo);
    if($presentacion->resumen){
	  
	  echo markdown($presentacion->resumen, '.resumen');}
	  else{
	  echo _tag('p.recurso_list', 'Sin resumen');
	  }
	  echo _tag('p.recurso_infos',
	  _tag('span', format_date($presentacion->createdAt, 'D')).
	  '|'.
	  _tag('span', $presentacion->num_diapositivas).
	  '|'.
	  _link($presentacion)->text(__('Leer m&aacutes...'))
	  );

  echo _close('li');
}

echo _close('ul');

echo $presentacionPager->renderNavigationBottom();