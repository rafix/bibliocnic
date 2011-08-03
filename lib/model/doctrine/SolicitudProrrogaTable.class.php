<?php


class SolicitudProrrogaTable extends myDoctrineTable
{
    
    public static function getInstance()
    {
        return Doctrine_Core::getTable('SolicitudProrroga');
    }
}