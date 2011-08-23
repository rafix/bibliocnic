<?php // Vars: $tesisPager

echo $tesisPager->renderNavigationTop();

echo _open('ul.elements');

foreach ($tesisPager as $tesis)
{
  echo _open('li.element');

    echo _link($tesis)->text($tesis->titulo);

  echo _close('li');
}

echo _close('ul');

echo $tesisPager->renderNavigationBottom();