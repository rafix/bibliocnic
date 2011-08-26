<?php // Vars: $monografiaPager
use_helper('Date');
echo $monografiaPager->renderNavigationTop();

echo _open('ul.elements');

foreach ($monografiaPager as $monografia)
{
  echo _open('li.element');

    echo _link($monografia)->set('.titulo_link')->text($monografia->titulo);
if($monografia->resumen){
	  
	  echo markdown($monografia->resumen, '.resumen');}
	  else{
	  echo _tag('p.recurso_list', 'Sin resumen');
	  }
	  echo _tag('p.recurso_infos',
	  _tag('span', format_date($monografia->createdAt, 'D')).
	  '|'.
	  _tag('span', $monografia->editorial).
	  '|'.
	  _link($monografia)->text(__('Leer m&aacutes...'))
	  );
  echo _close('li');
}

echo _close('ul');

echo $monografiaPager->renderNavigationBottom();