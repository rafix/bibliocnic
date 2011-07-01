<?php
/**
 * Busqueda components
 * 
 * No redirection nor database manipulation ( insert, update, delete ) here
 * 
 * 
 */
class busquedaComponents extends myFrontModuleComponents
{

  public function executeForm()
  {
    $this->form = $this->forms['busqueda'];
  }

  public function executeList()
  {
    $query = $this->getListQuery();
    
    $this->busquedaPager = $this->getPager($query);
  }

  public function executeShow()
  {
    $query = $this->getShowQuery();
    
    $this->busqueda = $this->getRecord($query);
  }


}
