<?php // Vars: $form
if ($sf_user->getFlash('busqueda_form_valid'))  
{  
  echo _tag('p.felicitaciones', 'Su solicitud ha sido enviada satisfactoriamente y será respondida con la mayor brevedad posible ');  
} 

echo $form;

