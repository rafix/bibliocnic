<?php // Vars: $recursoPager

echo $recursoPager->renderNavigationTop();

echo _open('ul.elements');

foreach ($recursoPager as $recurso)
{
  echo _open('li.element');

    echo _link($recurso);
	

  echo _close('li');
}

echo _close('ul');

echo $recursoPager->renderNavigationBottom();