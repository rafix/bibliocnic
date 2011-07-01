<?php // Vars: $busquedaPager

echo $busquedaPager->renderNavigationTop();

echo _open('ul.elements');

foreach ($busquedaPager as $busqueda)
{
  echo _open('li.element');

    echo _link($busqueda);

  echo _close('li');
}

echo _close('ul');

echo $busquedaPager->renderNavigationBottom();