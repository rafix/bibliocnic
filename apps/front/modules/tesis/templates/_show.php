<?php // Vars: $tesis
use_helper('Date');

echo _open('div.body.recurso');

// Wrap the title in a H1
echo _tag('h1.t_big','T&iacutetulo: '. $tesis->titulo);

// Open a P tag to display some article infos
if($tesis->createdBy){
echo _tag('p.recurso_infos',

  _tag('span', 'Creado el: '.format_date($tesis->createdAt, 'D')).
  ' | '.
  _tag('span', 'Creado por: '.$tesis->createdBy)
);}
else{

echo _tag('p.recurso_infos',

  _tag('span', 'Creado el: '.format_date($tesis->createdAt, 'D')).
  ' | '.
  _tag('span', 'Creado por: '.$tesis->updatedBy)
);
}



// render the article image.
// scale it to 200px width and height.
// give it the "image" CSS class.
//echo _media($article->Image)->size(200, 200)->set('.image');

// render article body processed with markdown.
if($tesis->resumen){

	  echo _tag('span.descriptor', 'Resumen: '. _tag('span.recurso_list', markdown($tesis->resumen, '.resumen')));}
	  else{
	  echo _tag('p.descriptor_rojo', 'Sin resumen');
	  }
	  echo _open('p');
	  echo _tag('span.descriptor', 'Palabras claves: '. _tag('span.recurso_list', $tesis->palabras_claves));
	  echo _close('p');
	  echo _open('p');
	  echo _tag('span.descriptor', 'Instituci&oacuten: '. _tag('span.recurso_list', $tesis->institucion));
      echo _close('p');
	  echo _open('p');
	  echo _tag('span.descriptor', 'Departamento: '. _tag('span.recurso_list', $tesis->departamento));
	  echo _close('p');
	  echo _open('p');
	  echo _tag('span.descriptor', 'Total de p&aacuteginas: '. _tag('span.recurso_list', $tesis->total_paginas));
	  echo _close('p');
	    echo _open('p');
	  echo _tag('span.descriptor', 'Ciudad: '. _tag('span.recurso_list', $tesis->ciudad));
	  echo _close('p');
	   echo _open('p');
	  echo _tag('span.descriptor', 'Tipo de tesis: '. _tag('span.recurso_list', $tesis->tipo));
	  echo _close('p');
	  echo _open('p');
	  echo _tag('span.descriptor', 'Tutor/Tutores: '. _tag('span.recurso_list', $tesis->tutor));
	  echo _close('p');
	  echo _open('p');
	  echo _tag('span.descriptor','Idioma: '. _tag('span.recurso_list', $tesis->idioma));
	  echo _close('p');
	  echo _open('p');
	  if($tesis->formato_duro){
	  
	  if ($tesis->prestado){
	  
	$records = dmDb::query('SolicitudPrestamo s')
    ->where('s.dm_user_id = ?', sfContext::getInstance()->getUser()->getUserId())
	->andwhere('s.recurso_id = ?', $tesis->id)
	
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
echo _link($tesis->Slide);
}
echo _close('div'); 
