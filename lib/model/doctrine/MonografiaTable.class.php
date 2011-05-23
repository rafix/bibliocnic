<?php


class MonografiaTable extends RecursoTable
{
    
    public static function getInstance()
    {
        return Doctrine_Core::getTable('Monografia');
    }
}