<?php


class SolicitudTable extends myDoctrineTable
{
    
    public static function getInstance()
    {
        return Doctrine_Core::getTable('Solicitud');
    }
}