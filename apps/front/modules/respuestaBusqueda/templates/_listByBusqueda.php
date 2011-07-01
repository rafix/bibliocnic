<?php // Vars: $respuestaBusquedaPager

echo $respuestaBusquedaPager->renderNavigationTop();

echo _open('ul.elements');

foreach ($respuestaBusquedaPager as $respuestaBusqueda)
{
  echo _open('li.element');

    echo _link($respuestaBusqueda);

  echo _close('li');
}

echo _close('ul');

echo $respuestaBusquedaPager->renderNavigationBottom();