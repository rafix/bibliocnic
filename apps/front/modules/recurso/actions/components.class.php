<?php
/**
 * Recurso components
 * 
 * No redirection nor database manipulation ( insert, update, delete ) here
 */
class recursoComponents extends myFrontModuleComponents
{

  public function executeList()
  {
    $query = $this->getListQuery();
    
    $this->recursoPager = $this->getPager($query);
  }

  public function executeForm()
  {
    $this->form = $this->forms['recurso'];
  }

  public function executeShow()
  {
    $query = $this->getShowQuery();
    
    $this->recurso = $this->getRecord($query);
  }


}
