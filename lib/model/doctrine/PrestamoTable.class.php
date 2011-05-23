<?php


class PrestamoTable extends myDoctrineTable
{
    
    public static function getInstance()
    {
        return Doctrine_Core::getTable('Prestamo');
    }
}