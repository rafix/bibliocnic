<?php // Vars: $patentePager

echo $patentePager->renderNavigationTop();

echo _open('ul.elements');

foreach ($patentePager as $patente)
{
  echo _open('li.element');

    echo 'T&iacutetulo: '._link($patente)->text($patente->titulo);
	if($patente->resumen){
	  
	  echo _tag('p', 'Resumen: '.markdown($patente->resumen, '.resumen'));}
	  else{
	  echo _tag('p.recurso_list', 'Sin resumen');
	  }

  echo _close('li');
}

echo _close('ul');

echo $patentePager->renderNavigationBottom();