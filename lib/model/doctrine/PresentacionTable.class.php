<?php


class PresentacionTable extends RecursoTable
{
    
    public static function getInstance()
    {
        return Doctrine_Core::getTable('Presentacion');
    }
}