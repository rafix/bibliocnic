<?php // Vars: $monografiaPager

echo $monografiaPager->renderNavigationTop();

echo _open('ul.elements');

foreach ($monografiaPager as $monografia)
{
  echo _open('li.element');

    echo _link($monografia)->text($monografia->titulo);

  echo _close('li');
}

echo _close('ul');

echo $monografiaPager->renderNavigationBottom();