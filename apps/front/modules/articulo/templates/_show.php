<?php // Vars: $articulo
use_helper('Date');

echo _open('div.body.recurso');

// Wrap the title in a H1
echo _tag('h1.t_big','T&iacutetulo: '. $articulo->titulo);

// Open a P tag to display some article infos
if($articulo->createdBy){
echo _tag('p.recurso_infos',

  _tag('span', 'Creado el: '.format_date($articulo->createdAt, 'D')).
  ' | '.
  _tag('span', 'Creado por: '.$articulo->createdBy)
);}
else{

echo _tag('p.recurso_infos',

  _tag('span', 'Creado el: '.format_date($articulo->createdAt, 'D')).
  ' | '.
  _tag('span', 'Creado por: '.$articulo->updatedBy)
);
}



// render the article image.
// scale it to 200px width and height.
// give it the "image" CSS class.
//echo _media($article->Image)->size(200, 200)->set('.image');

// render article body processed with markdown.
if($articulo->resumen){

	  echo _tag('span.descriptor', 'Resumen: '. _tag('span.recurso_list', markdown($articulo->resumen, '.resumen')));}
	  else{
	  echo _tag('p.descriptor_rojo', 'Sin resumen');
	  }
	  echo _open('p');
	  echo _tag('span.descriptor', 'Palabras claves: '. _tag('span.recurso_list', $articulo->palabras_claves));
	  echo _close('p');
	  echo _open('p');
	  echo _tag('span.descriptor', 'A&ntildeo de Publicaci&oacuten: '. _tag('span.recurso_list', $articulo->anno));
      echo _close('p');
	  echo _open('p');
	  echo _tag('span.descriptor', 'Volumen: '._tag('span.recurso_list', $articulo->volumen));
	  echo _close('p');
	  echo _open('p');
	  echo _tag('span.descriptor', 'No. de revista: '._tag('span.recurso_list', $articulo->num_revista));
	  echo _close('p');
	  echo _open('p');
	  echo _tag('span.descriptor', 'ISSN: '._tag('span.recurso_list', $articulo->issn));
	  echo _close('p');
	  echo _open('p');
	  echo _tag('span.descriptor', 'Desde la p&aacutegina: '._tag('span.recurso_list', $articulo->pagina_inicial));
	  echo _close('p');
	  echo _open('p');
	  echo _tag('span.descriptor', 'Hasta la p&aacutegina: '._tag('span.recurso_list', $articulo->pagina_final));
	  echo _close('p');
	  echo _open('p');
	  echo _tag('span.descriptor','Idioma: '. _tag('span.recurso_list', $articulo->idioma));
	  echo _close('p');
	  echo _open('p');
	  if($articulo->formato_duro){
	  //hidratando la consulta para saber si ya esta la solicitud
	  if ($articulo->prestado){
	  
	$records = dmDb::query('SolicitudPrestamo s')
    ->where('s.dm_user_id = ?', sfContext::getInstance()->getUser()->getUserId())
	->andwhere('s.recurso_id = ?', $articulo->id)
	
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
echo _link($articulo->Slide)->title('Descargar articulo')->set('.image_descargar')->text(_media('download.png')->alt('Descargar articulo'));
}
echo _close('div'); 
