<?php // Vars: $presentacionPager

echo $presentacionPager->renderNavigationTop();

echo _open('ul.elements');

foreach ($presentacionPager as $presentacion)
{
  echo _open('li.element');

    echo _link($presentacion)->text($presentacion->titulo);

  echo _close('li');
}

echo _close('ul');

echo $presentacionPager->renderNavigationBottom();