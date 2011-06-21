<?php

if($sf_user->isAuthenticated())
{ 
  /*echo _media($dm_user->Image);*/
  $image = $sf_user->getUser()->get('Image');
  echo _media($sf_user->getUser()->get('foto_id'));
  echo _tag('p', __('Bienvenido %username%', array('%username%' => $sf_user->getUsername())));
  return;
}

echo $form->open('.dm_signin_form action=@signin');

echo _tag('ul.dm_form_elements',

  _tag('li.dm_form_element', $form['username']->label()->field()->error()).

  _tag('li.dm_form_element', $form['password']->label()->field()->error()).

  _tag('li.dm_form_element', $form['remember']->label()->field()->error())

);

echo $form->renderHiddenFields();

echo $form->submit(__('Signin'));

echo $form->close();