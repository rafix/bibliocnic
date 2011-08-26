<?php // Vars: $patentePager
use_helper('Date');
echo $patentePager->renderNavigationTop();

echo _open('ul.elements');

foreach ($patentePager as $patente)
{
  echo _open('li.element');

 echo _link($patente)->set('.titulo_link')->text($patente->titulo);
    if($patente->resumen){
	  
	  echo markdown($patente->resumen, '.resumen');}
	  else{
	  echo _tag('p.recurso_list', 'Sin resumen');
	  }
	  echo _tag('p.recurso_infos',
	  _tag('span', format_date($patente->createdAt, 'D')).
	  '|'.
	  _tag('span', $patente->num_internacional).
	  '|'.
	  _link($patente)->text(__('Leer m&aacutes...'))
	  );
  echo _close('li');
}

echo _close('ul');

echo $patentePager->renderNavigationBottom();