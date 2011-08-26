<?php

require_once dirname(__FILE__).'/../bootstrap/unit.php';

$t = new lime_test(1);

$t->is($this->patente->setConsultado(2),'2');