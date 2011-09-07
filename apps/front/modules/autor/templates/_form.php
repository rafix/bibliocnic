<?php // Vars: $form
if ($sf_user->getFlash('formulario_valido'))  
{  
  echo _tag('p.felicitaciones', 'El autor ha sido creado. Puede continuar creando autores o dirigirse a a&ntildeadir un recurso.');  
}
echo $form;