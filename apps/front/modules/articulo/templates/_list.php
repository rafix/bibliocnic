<?php // Vars: $articuloPager

echo $articuloPager->renderNavigationTop();

echo _open('ul.elements');

foreach ($articuloPager as $articulo)
{
  echo _open('li.element');

    echo _link($articulo);

  echo _close('li');
}

echo _close('ul');

echo $articuloPager->renderNavigationBottom();