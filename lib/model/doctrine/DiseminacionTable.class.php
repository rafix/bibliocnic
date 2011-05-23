<?php


class DiseminacionTable extends myDoctrineTable
{
    
    public static function getInstance()
    {
        return Doctrine_Core::getTable('Diseminacion');
    }
}