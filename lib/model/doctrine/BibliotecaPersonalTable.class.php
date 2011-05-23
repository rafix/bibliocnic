<?php


class BibliotecaPersonalTable extends RecursoTable
{
    
    public static function getInstance()
    {
        return Doctrine_Core::getTable('BibliotecaPersonal');
    }
}