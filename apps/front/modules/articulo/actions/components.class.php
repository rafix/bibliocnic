<?php
/**
 * Articulo components
 * 
 * No redirection nor database manipulation ( insert, update, delete ) here
 */
class articuloComponents extends myFrontModuleComponents
{

  public function executeList()
  {
    $query = $this->getListQuery();
    
    $this->articuloPager = $this->getPager($query);
  }

  public function executeShow()
  {
    $query = $this->getShowQuery();
    
    $this->articulo = $this->getRecord($query);
  }

  public function executeForm()
  {
    $this->form = $this->forms['Articulo'];
  }


}
