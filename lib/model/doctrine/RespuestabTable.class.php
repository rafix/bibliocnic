<?php


class RespuestabTable extends myDoctrineTable
{
    
    public static function getInstance()
    {
        return Doctrine_Core::getTable('Respuestab');
    }
}