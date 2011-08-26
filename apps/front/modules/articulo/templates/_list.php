<?php // Vars: $articuloPager
use_helper('Date');
echo $articuloPager->renderNavigationTop();

echo _open('ul.elements');

foreach ($articuloPager as $articulo)
{
  echo _open('li.element');

   echo _link($articulo)->set('.titulo_link')->text($articulo->titulo);
    if($articulo->resumen){
	  
	  echo markdown($articulo->resumen, '.resumen');}
	  else{
	  echo _tag('p.recurso_list', 'Sin resumen');
	  }
	  echo _tag('p.recurso_infos',
	  _tag('span', format_date($articulo->createdAt, 'D')).
	  '|'.
	  _tag('span', $articulo->issn).
	  '|'.
	  _link($articulo)->text(__('Leer m&aacutes...'))
	  );

  echo _close('li');
}

echo _close('ul');

echo $articuloPager->renderNavigationBottom();