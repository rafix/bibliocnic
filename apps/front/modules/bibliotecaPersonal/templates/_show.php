<?php // Vars: $bibliotecaPersonal
use_helper('Date');

echo _open('div.clearfix');

// Wrap the title in a H1
echo _tag('h1.t_big','T&iacutetulo: '. $bibliotecaPersonal->titulo);

// Open a P tag to display some article infos
if($bibliotecaPersonal->createdBy){
echo _tag('p.recurso_infos',

  _tag('span', 'Creado el: '.format_date($bibliotecaPersonal->createdAt, 'D')).
  ' | '.
  _tag('span', 'Creado por: '.$bibliotecaPersonal->createdBy)
);}
else{

echo _tag('p.recurso_infos',

  _tag('span', 'Creado el: '.format_date($bibliotecaPersonal->createdAt, 'D')).
  ' | '.
  _tag('span', 'Creado por: '.$bibliotecaPersonal->updatedBy)
);
}



// render the article image.
// scale it to 200px width and height.
// give it the "image" CSS class.
//echo _media($article->Image)->size(200, 200)->set('.image');

// render article body processed with markdown.
if($bibliotecaPersonal->resumen){

	  echo _tag('span.descriptor', 'Resumen: '. _tag('span.recurso_list', markdown($bibliotecaPersonal->resumen, '.resumen')));}
	  else{
	  echo _tag('p.descriptor_rojo', 'Sin resumen');
	  }
	  echo _open('p');
	  echo _tag('span.descriptor', 'Palabras claves: '. _tag('span.recurso_list', $bibliotecaPersonal->palabras_claves));
	  echo _close('p');
	  echo _open('p');
	  echo _tag('span.descriptor', 'Cantidad de registros: '. _tag('span.recurso_list', $bibliotecaPersonal->cant_registros));
      echo _close('p');
	  echo _open('p');
	  echo _tag('span.descriptor', 'Fecha inicial: '._tag('span.recurso_list', format_date($bibliotecaPersonal->fecha_inicial, 'D')));
	  echo _close('p');
	  echo _open('p');
	  echo _tag('span.descriptor', 'Fecha final: '._tag('span.recurso_list', format_date($bibliotecaPersonal->fecha_final, 'D')));
	  echo _close('p');
	  echo _open('p');
	  echo _tag('span.descriptor','Idioma: '. _tag('span.recurso_list', $bibliotecaPersonal->idioma));
	  echo _close('p');
	  echo _open('p');
	  if($bibliotecaPersonal->formato_duro){
	  //hidratando la consulta para saber si ya esta la solicitud
	  if ($bibliotecaPersonal->prestado){
	  
	$records = dmDb::query('SolicitudPrestamo s')
    ->where('s.dm_user_id = ?', 1)
	->andwhere('s.recurso_id = ?', $bibliotecaPersonal)
	
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
echo _link($bibliotecaPersonal->Slide);
}
echo _close('div'); 
