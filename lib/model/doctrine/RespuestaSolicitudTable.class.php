<?php


class RespuestaSolicitudTable extends RespuestaTable
{
    
    public static function getInstance()
    {
        return Doctrine_Core::getTable('RespuestaSolicitud');
    }
}