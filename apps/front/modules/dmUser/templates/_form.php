<?php

/*if($sf_user->isAuthenticated())
{
  $image = $sf_user->getUser()->get('Image');
  echo _media($image)->size(50,60);
  echo _tag('p', __('Usted ya se encuentra registrado como "%username%", si no es "%username%" por favor cierre la sesi&oacuten e intente registrarse de nuevo.', array('%username%' => $sf_user->getUsername())));
  return;
}*/

echo $form;