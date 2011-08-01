<?php // Vars: $respuestaPager

echo $respuestaPager->renderNavigationTop();

echo _open('ul.elements');

foreach ($respuestaPager as $respuesta)
{
  echo _open('li.element');

    echo _link($respuesta);

  echo _close('li');
}

echo _close('ul');

echo $respuestaPager->renderNavigationBottom();