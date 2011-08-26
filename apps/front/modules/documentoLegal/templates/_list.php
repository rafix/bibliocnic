<?php // Vars: $documentoLegalPager
use_helper('Date');
echo $documentoLegalPager->renderNavigationTop();

echo _open('ul.elements');

foreach ($documentoLegalPager as $documentoLegal)
{
  echo _open('li.element');

echo _link($documentoLegal)->set('.titulo_link')->text($documentoLegal->titulo);
    if($documentoLegal->resumen){
	  
	  echo markdown($documentoLegal->resumen, '.resumen');}
	  else{
	  echo _tag('p.recurso_list', 'Sin resumen');
	  }
	  echo _tag('p.recurso_infos',
	  _tag('span', format_date($documentoLegal->createdAt, 'D')).
	  '|'.
	  _tag('span', $documentoLegal->tipo_dc).
	  '|'.
	  _link($documentoLegal)->text(__('Leer m&aacutes...'))
	  );

  echo _close('li');
}

echo _close('ul');

echo $documentoLegalPager->renderNavigationBottom();