<?php // Vars: $form
if ($sf_user->getFlash('formulario_valido'))  
{  
  echo _tag('p.felicitaciones', 'Gracias, su presentaci&oacuten ha sido a&ntildeadida satisfactoriamente y ser&aacute publicada proximamente.');  
}
echo $form;