<?php
/**
 * Prestamo components
 * 
 * No redirection nor database manipulation ( insert, update, delete ) here
 */
class prestamoComponents extends myFrontModuleComponents
{

  public function executeForm()
  {
    $this->form = $this->forms['Prestamo'];
  }

  public function executeList()
  {
    $query = $this->getListQuery();
    
    $this->prestamoPager = $this->getPager($query);
  }


}
