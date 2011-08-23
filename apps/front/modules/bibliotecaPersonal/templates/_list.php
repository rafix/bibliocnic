<?php // Vars: $bibliotecaPersonalPager

echo $bibliotecaPersonalPager->renderNavigationTop();

echo _open('ul.elements');

foreach ($bibliotecaPersonalPager as $bibliotecaPersonal)
{
  echo _open('li.element');

    echo _link($bibliotecaPersonal)->text($bibliotecaPersonal->titulo);

  echo _close('li');
}

echo _close('ul');

echo $bibliotecaPersonalPager->renderNavigationBottom();