<?php // Vars: $monografia
use_helper('Date');

echo _open('div.clearfix');

// Wrap the title in a H1
echo _tag('h1.t_big','T&iacutetulo: '. $monografia->titulo);

// Open a P tag to display some article infos
if($monografia->createdBy){
echo _tag('p.recurso_infos',

  _tag('span', 'Creado el: '.format_date($monografia->createdAt, 'D')).
  ' | '.
  _tag('span', 'Creado por: '.$monografia->createdBy)
);}
else{

echo _tag('p.recurso_infos',

  _tag('span', 'Creado el: '.format_date($monografia->createdAt, 'D')).
  ' | '.
  _tag('span', 'Creado por: '.$monografia->updatedBy)
);
}



// render the article image.
// scale it to 200px width and height.
// give it the "image" CSS class.
//echo _media($article->Image)->size(200, 200)->set('.image');

// render article body processed with markdown.
if($monografia->resumen){

	  echo _tag('span.descriptor', 'Resumen: '. _tag('span.recurso_list', markdown($monografia->resumen, '.resumen')));}
	  else{
	  echo _tag('p.descriptor_rojo', 'Sin resumen');
	  }
	  echo _open('p');
	  echo _tag('span.descriptor', 'Palabras claves: '. _tag('span.recurso_list', $monografia->palabras_claves));
	  echo _close('p');
	  echo _open('p');
	  echo _tag('span.descriptor', 'Ciudad de publicaci&oacuten: '. _tag('span.recurso_list', $monografia->ciudad_pub));
      echo _close('p');
	  echo _open('p');
	  echo _tag('span.descriptor', 'Editorial: '. _tag('span.recurso_list', $monografia->editorial));
	  echo _close('p');
	  echo _open('p');
	  echo _tag('span.descriptor', 'Total de p&aacuteginas: '. _tag('span.recurso_list', $monografia->total_paginas));
	  echo _close('p');
	    echo _open('p');
	  echo _tag('span.descriptor', 'ISBN: '. _tag('span.recurso_list', $monografia->isbn));
	  echo _close('p');
	   echo _open('p');
	  echo _tag('span.descriptor', 'No. de Inventario: '. _tag('span.recurso_list', $monografia->num_inventario));
	  echo _close('p');
	  echo _open('p');
	  echo _tag('span.descriptor','Idioma: '. _tag('span.recurso_list', $monografia->idioma));
	  echo _close('p');
	  echo _open('p');
	  if($monografia->formato_duro){
	  
	  if ($monografia->prestado){
	  
	$records = dmDb::query('SolicitudPrestamo s')
    ->where('s.dm_user_id = ?', 1)
	->andwhere('s.recurso_id = ?', $monografia)
	
    ->fetchRecords();
        $cont = 0;
	foreach($records as $record){
	$cont++;
        }
        if($cont >= 1){
	echo _tag('span.descriptor','Disponible: '. _tag('span.recurso_list', 'No '. _tag('span.recurso_list.aviso', 'Usted ser&aacute avisado cuando este recurso est&eacute disponible')));
	
        }
	else {

	echo _tag('span.descriptor','Disponible: No. '. _link('+/SolicitudPrestamo/solicitar')->text('Avisarme cuando est&eacute disponible') );
	
	}
   }
	  else {

	  echo _tag('span.descriptor','Disponible: '. _tag('span.recurso_list', 'S&iacute'));
	  }
	  
}
else{
echo _link($monografia->Slide);
}
echo _close('div'); 
