<?php // Vars: $patentePager

echo $patentePager->renderNavigationTop();

echo _open('ul.elements');

foreach ($patentePager as $patente)
{
  echo _open('li.element');

    echo _link($patente);

  echo _close('li');
}

echo _close('ul');

echo $patentePager->renderNavigationBottom();