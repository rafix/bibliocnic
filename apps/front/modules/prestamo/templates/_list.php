<?php // Vars: $prestamoPager

echo $prestamoPager->renderNavigationTop();

echo _open('ul.elements');

foreach ($prestamoPager as $prestamo)
{
  echo _open('li.element');

    echo _link($prestamo);

  echo _close('li');
}

echo _close('ul');

echo $prestamoPager->renderNavigationBottom();