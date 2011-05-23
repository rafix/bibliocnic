<?php


class ArticuloTable extends RecursoTable
{
    
    public static function getInstance()
    {
        return Doctrine_Core::getTable('Articulo');
    }
}