<?php // Vars: $presentacion
use_helper('Date');

echo _open('div.body.recurso');

// Wrap the title in a H1
echo _tag('h1.t_big','T&iacutetulo: '. $presentacion->titulo);

// Open a P tag to display some article infos
if($presentacion->createdBy){
echo _tag('p.recurso_infos',

  _tag('span', 'Creado el: '.format_date($presentacion->createdAt, 'D')).
  ' | '.
  _tag('span', 'Creado por: '.$presentacion->createdBy)
);}
else{

echo _tag('p.recurso_infos',

  _tag('span', 'Creado el: '.format_date($presentacion->createdAt, 'D')).
  ' | '.
  _tag('span', 'Creado por: '.$presentacion->updatedBy)
);
}



// render the article image.
// scale it to 200px width and height.
// give it the "image" CSS class.
//echo _media($article->Image)->size(200, 200)->set('.image');

// render article body processed with markdown.
if($presentacion->resumen){

	  echo _tag('span.descriptor', 'Resumen: '. _tag('span.recurso_list', markdown($presentacion->resumen, '.resumen')));}
	  else{
	  echo _tag('p.descriptor_rojo', 'Sin resumen');
	  }
	  echo _open('p');
	  echo _tag('span.descriptor', 'Palabras claves: '. _tag('span.recurso_list', $presentacion->palabras_claves));
	  echo _close('p');
	  echo _open('p');
	  echo _tag('span.descriptor', 'A&ntildeo de publicaci&oacuten: '. _tag('span.recurso_list', $presentacion->anno));
      echo _close('p');
	  echo _open('p');
	  echo _tag('span.descriptor', 'No. de diapositivas: '. _tag('span.recurso_list', $presentacion->num_diapositivas));
	  echo _close('p');
	  echo _tag('span.descriptor','Idioma: '. _tag('span.recurso_list', $presentacion->idioma));
	  echo _close('p');
	  echo _open('p');
	  if($presentacion->formato_duro){
	  
	  if ($presentacion->prestado){
	  
	$records = dmDb::query('SolicitudPrestamo s')
    ->where('s.dm_user_id = ?', sfContext::getInstance()->getUser()->getUserId())
	->andwhere('s.recurso_id = ?', $presentacion->id)
	
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
echo _link($presentacion->Slide)->title('Descargar presentacion')->set('.image_descargar')->text(_media('download.png')->alt('Descargar presentacion'));
}
echo _close('div'); 
