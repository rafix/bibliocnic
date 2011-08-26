<?php // Vars: $bibliotecaPersonalPager
use_helper('Date');
echo $bibliotecaPersonalPager->renderNavigationTop();

echo _open('ul.elements');

foreach ($bibliotecaPersonalPager as $bibliotecaPersonal)
{
  echo _open('li.element');

    echo _link($bibliotecaPersonal)->set('.titulo_link')->text($bibliotecaPersonal->titulo);
	if($bibliotecaPersonal->resumen){
	  
	  echo markdown($bibliotecaPersonal->resumen, '.resumen');}
	  else{
	  echo _tag('p.recurso_list', 'Sin resumen');
	  }
	  echo _tag('p.recurso_infos',
	  _tag('span', format_date($bibliotecaPersonal->createdAt, 'D')).
	  '|'.
	  _tag('span', $bibliotecaPersonal->fecha_inicial).
	  '|'.
	  _link($bibliotecaPersonal)->text(__('Leer m&aacutes...'))
	  );

  echo _close('li');
}

echo _close('ul');

echo $bibliotecaPersonalPager->renderNavigationBottom();