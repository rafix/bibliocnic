<?php // Vars: $form
if ($sf_user->getFlash('formulario_valido'))  
{  
  echo _tag('p.felicitaciones', 'Gracias, su Documento Legal ha sido a&ntildeadido satisfactoriamente y ser&aacute publicado proximamente');  
}
echo $form;