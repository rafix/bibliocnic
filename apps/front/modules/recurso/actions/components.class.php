<?php
/**
 * Recurso components
 * 
 * No redirection nor database manipulation ( insert, update, delete ) here
 * 
 * 
 */
class recursoComponents extends myFrontModuleComponents
{

  public function executeList()
  {
    $query = $this->getListQuery();
    
    $this->recursoPager = $this->getPager($query);
    	$this->recursoPager->setOption('ajax', true);
  }

  public function executeShow()
  {
    $query = $this->getShowQuery();
    $this->recurso = $this->getRecord($query);
    $this->getUser()->setAttribute('recurso', $query);
  }

  public function executeForm()
  {
    $this->form = $this->forms['Recurso'];
  }

  public function executeListPopulares()
  {
    $query = $this->getListQuery();
    
    $this->recursoPager = $this->getPager($query);
  }


}
