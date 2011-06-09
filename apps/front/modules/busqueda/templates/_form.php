<?php // Vars: $form
if ($sf_user->getFlash('busqueda_form_valid'))  
{  
  echo _tag('p.h2', 'Su solicitud ha sido enviada satisfactoriamente y será respondida con la mayor brevedad posible ');  
}
else
{
echo _tag('p.error', 'A ocurrido un error en el envio, intentelo más tarde o consulte al administrador del sitio. ');
}
echo $form;

