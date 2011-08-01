<?php // Vars: $preguntaPager

echo $preguntaPager->renderNavigationTop();

echo _open('ul.elements');

foreach ($preguntaPager as $pregunta)
{
  echo _open('li.element');

    echo _link($pregunta);

  echo _close('li');
}

echo _close('ul');

echo $preguntaPager->renderNavigationBottom();