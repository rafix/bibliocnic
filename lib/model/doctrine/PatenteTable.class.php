<?php


class PatenteTable extends RecursoTable
{
    
    public static function getInstance()
    {
        return Doctrine_Core::getTable('Patente');
    }
}