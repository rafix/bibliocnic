<?php // Vars: $form
if ($sf_user->getFlash('pregunta_form_valid'))  
{  
  echo _tag('p.felicitaciones', 'Su solicitud ha sido enviada satisfactoriamente y ser&aacute respondida con la mayor brevedad posible ');  
}
echo $form;