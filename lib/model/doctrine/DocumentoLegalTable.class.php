<?php


class DocumentoLegalTable extends RecursoTable
{
    
    public static function getInstance()
    {
        return Doctrine_Core::getTable('DocumentoLegal');
    }
}