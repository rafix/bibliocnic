<?php // Vars: $documentoLegalPager

echo $documentoLegalPager->renderNavigationTop();

echo _open('ul.elements');

foreach ($documentoLegalPager as $documentoLegal)
{
  echo _open('li.element');

    echo _link($documentoLegal)->text($documentoLegal->titulo);

  echo _close('li');
}

echo _close('ul');

echo $documentoLegalPager->renderNavigationBottom();