<?php


class RecursoAutorTable extends myDoctrineTable
{
    
    public static function getInstance()
    {
        return Doctrine_Core::getTable('RecursoAutor');
    }
}