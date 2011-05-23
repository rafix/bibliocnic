<?php


class RecursoTematicaTable extends myDoctrineTable
{
    
    public static function getInstance()
    {
        return Doctrine_Core::getTable('RecursoTematica');
    }
}