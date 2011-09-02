<?php // Vars: $autorPager

echo $autorPager->renderNavigationTop();

echo _open('ul.elements');

foreach ($autorPager as $autor)
{
  echo _open('li.element');

    echo _link($autor);

  echo _close('li');
}

echo _close('ul');

echo $autorPager->renderNavigationBottom();