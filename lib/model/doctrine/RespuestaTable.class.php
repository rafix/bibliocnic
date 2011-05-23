<?php


class RespuestaTable extends myDoctrineTable
{
    
    public static function getInstance()
    {
        return Doctrine_Core::getTable('Respuesta');
    }
}