<?php // Vars: $solicitudPrestamoPager

echo $solicitudPrestamoPager->renderNavigationTop();

echo _open('ul.elements');

foreach ($solicitudPrestamoPager as $solicitudPrestamo)
{
  echo _open('li.element');

    echo _link($solicitudPrestamo);

  echo _close('li');
}

echo _close('ul');

echo $solicitudPrestamoPager->renderNavigationBottom();