<?php


class TesisTable extends RecursoTable
{
    
    public static function getInstance()
    {
        return Doctrine_Core::getTable('Tesis');
    }
}