<?php
/**
 * Respuesta components
 * 
 * No redirection nor database manipulation ( insert, update, delete ) here
 * 
 * 
 */
class respuestaComponents extends myFrontModuleComponents
{

  public function executeListByBusqueda()
  {
    $query = $this->getListQuery();
    
    $this->respuestaPager = $this->getPager($query);
  }

  public function executeShow()
  {
    $query = $this->getShowQuery();
    
    $this->respuesta = $this->getRecord($query);
  }

  public function executeListByPregunta()
  {
    $query = $this->getListQuery();
    
    $this->respuestaPager = $this->getPager($query);
  }


}
