<?php
/**
 * Patente components
 * 
 * No redirection nor database manipulation ( insert, update, delete ) here
 */
class patenteComponents extends myFrontModuleComponents
{

  public function executeList()
  {
    $query = $this->getListQuery();
    
    $this->patentePager = $this->getPager($query);
  }

  public function executeShow()
  { 
    
    $query = $this->getShowQuery();
    
    $this->patente = $this->getRecord($query);
	$this->getUser()->setAttribute('recurso', $this->patente);
	
	
  }

  public function executeForm()
  {
    $this->form = $this->forms['Patente'];
  }


}
