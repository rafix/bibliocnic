<?php

echo
$form->open('action=main/search method=get'),

$form['query']->field('.query'),

$form->submit(__('Search')),

$form->close();