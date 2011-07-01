<?php
/**
 * Respuesta busqueda components
 * 
 * No redirection nor database manipulation ( insert, update, delete ) here
 */
class respuestaBusquedaComponents extends myFrontModuleComponents
{

  public function executeListByBusqueda()
  {
    $query = $this->getListQuery();
    
    $this->respuestaBusquedaPager = $this->getPager($query);
  }

  public function executeShow()
  {
    $query = $this->getShowQuery();
    
    $this->respuestaBusqueda = $this->getRecord($query);
  }


}
