<?php // Vars: $patente
use_helper('Date');

echo _open('div.body.recurso');

// Wrap the title in a H1
echo _tag('h1.t_big','T&iacutetulo: '. $patente->titulo);

// Open a P tag to display some article infos
if($patente->createdBy){
echo _tag('p.recurso_infos',

  _tag('span', 'Creado el: '.format_date($patente->createdAt, 'D')).
  ' | '.
  _tag('span', 'Creado por: '.$patente->createdBy)
);}
else{

echo _tag('p.recurso_infos',

  _tag('span', 'Creado el: '.format_date($patente->createdAt, 'D')).
  ' | '.
  _tag('span', 'Creado por: '.$patente->updatedBy)
);
}



// render the article image.
// scale it to 200px width and height.
// give it the "image" CSS class.
//echo _media($article->Image)->size(200, 200)->set('.image');

// render article body processed with markdown.
if($patente->resumen){

	  echo _tag('span.descriptor', 'Resumen: '. _tag('span.recurso_list', markdown($patente->resumen, '.resumen')));}
	  else{
	  echo _tag('p.descriptor_rojo', 'Sin resumen');
	  }
	  echo _open('p');
	  echo _tag('span.descriptor', 'Palabras claves: '. _tag('span.recurso_list', $patente->palabras_claves));
	  echo _close('p');
	  echo _open('p');
	  echo _tag('span.descriptor', 'Pa&iacutes: '. _tag('span.recurso_list', $patente->pais));
      echo _close('p');
	  echo _open('p');
	  echo _tag('span.descriptor', 'Instituci&oacuten: '. _tag('span.recurso_list', $patente->institucion));
	  echo _close('p');
	  echo _open('p');
	  echo _tag('span.descriptor', 'No. de publicaci&oacuten: '. _tag('span.recurso_list', $patente->num_internacional));
	  echo _close('p');
	  echo _open('p');
	  echo _tag('span.descriptor','Idioma: '. _tag('span.recurso_list', $patente->idioma));
	  echo _close('p');
	  echo _open('p');
	  if($patente->formato_duro){
	  
	  if ($patente->prestado){
	  
	$records = dmDb::query('SolicitudPrestamo s')
    ->where('s.dm_user_id = ?', sfContext::getInstance()->getUser()->getUserId())
	->andwhere('s.recurso_id = ?', $patente->id)
	
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
echo _link($patente->Slide)->title('Descargar patente')->set('.image_descargar')->text(_media('download.png')->alt('Descargar patente'));;
}
echo _close('div'); 
