<?php // Vars: $tesisPager
use_helper('Date');
echo $tesisPager->renderNavigationTop();

echo _open('ul.elements');

foreach ($tesisPager as $tesis)
{
  echo _open('li.element');

    echo _link($tesis)->set('.titulo_link')->text($tesis->titulo);
    if($tesis->resumen){
	  
	  echo markdown($tesis->resumen, '.resumen');}
	  else{
	  echo _tag('p.recurso_list', 'Sin resumen');
	  }
	  echo _tag('p.recurso_infos',
	  _tag('span', format_date($tesis->createdAt, 'D')).
	  '|'.
	  _tag('span', $tesis->tipo).
	  '|'.
	  _link($tesis)->text(__('Leer m&aacutes...'))
	  );
  echo _close('li');
}

echo _close('ul');

echo $tesisPager->renderNavigationBottom();