<?php


class SolicitudPrestamoTable extends myDoctrineTable
{
    
    public static function getInstance()
    {
        return Doctrine_Core::getTable('SolicitudPrestamo');
    }
}