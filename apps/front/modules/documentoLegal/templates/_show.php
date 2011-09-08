<?php // Vars: $documentoLegal
use_helper('Date');

echo _open('div.body.recurso');

// Wrap the title in a H1
echo _tag('h1.t_big','T&iacutetulo: '. $documentoLegal->titulo);

// Open a P tag to display some article infos
if($documentoLegal->createdBy){
echo _tag('p.recurso_infos',

  _tag('span', 'Creado el: '.format_date($documentoLegal->createdAt, 'D')).
  ' | '.
  _tag('span', 'Creado por: '.$documentoLegal->createdBy)
);}
else{

echo _tag('p.recurso_infos',

  _tag('span', 'Creado el: '.format_date($documentoLegal->createdAt, 'D')).
  ' | '.
  _tag('span', 'Creado por: '.$documentoLegal->updatedBy)
);
}



// render the article image.
// scale it to 200px width and height.
// give it the "image" CSS class.
//echo _media($article->Image)->size(200, 200)->set('.image');

// render article body processed with markdown.
if($documentoLegal->resumen){

	  echo _tag('span.descriptor', 'Resumen: '. _tag('span.recurso_list', markdown($documentoLegal->resumen, '.resumen')));}
	  else{
	  echo _tag('p.descriptor_rojo', 'Sin resumen');
	  }
	  echo _open('p');
	  echo _tag('span.descriptor', 'Palabras claves: '. _tag('span.recurso_list', $documentoLegal->palabras_claves));
	  echo _close('p');
	  echo _open('p');
	  echo _tag('span.descriptor', 'Tipo de documento: '. _tag('span.recurso_list', $documentoLegal->tipo_dc));
      echo _close('p');
	  echo _open('p');
	  echo _tag('span.descriptor', 'Organismo: '._tag('span.recurso_list', $documentoLegal->organismo));
	  echo _close('p');
	  echo _open('p');
	  echo _tag('span.descriptor', 'Total de p&aacuteginas: '._tag('span.recurso_list', $documentoLegal->total_paginas));
	  echo _close('p');
	  echo _open('p');
	  echo _tag('span.descriptor','Idioma: '. _tag('span.recurso_list', $documentoLegal->idioma));
	  echo _close('p');
	  echo _open('p');
	  if($documentoLegal->formato_duro){
	  //hidratando la consulta para saber si ya esta la solicitud
	  if ($documentoLegal->prestado){
	  
	$records = dmDb::query('SolicitudPrestamo s')
    ->where('s.dm_user_id = ?', sfContext::getInstance()->getUser()->getUserId())
	->andwhere('s.recurso_id = ?', $documentoLegal->id)
	
    ->fetchRecords();
        $cont = 0;
	foreach($records as $record){
	$cont++;
        }
        if($cont >= 1){
	echo _tag('span.descriptor','Disponible: '. _tag('span.recurso_list', 'No '. _tag('span.recurso_list.aviso', 'Usted ser&aacute avisado cuando este recurso est&eacute disponible')));
	
        }
	else {

	echo _tag('p.recurso_list','Disponible: No. '. _link('+/SolicitudPrestamo/solicitar')->text('Avisarme cuando est&eacute disponible') );
	
	}
   }
	  else {

	  echo _tag('p.recurso_list','Disponible: S&iacute');
	  }
	  
}
else{
echo _link($documentoLegal->Slide);
}
echo _close('div'); 
