<?php


class RecursoEventoTable extends myDoctrineTable
{
    
    public static function getInstance()
    {
        return Doctrine_Core::getTable('RecursoEvento');
    }
}