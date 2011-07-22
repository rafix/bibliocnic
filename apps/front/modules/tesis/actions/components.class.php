<?php
/**
 * Tesis components
 * 
 * No redirection nor database manipulation ( insert, update, delete ) here
 * 
 */
class tesisComponents extends myFrontModuleComponents
{

  public function executeForm()
  {
    $this->form = $this->forms['tesis'];
  }

  public function executeList()
  {
    $query = $this->getListQuery();
    
    $this->tesisPager = $this->getPager($query);
  }

  public function executeShow()
  {
    $query = $this->getShowQuery();
    
    $this->tesis = $this->getRecord($query);
  }

  public function executeFormUpload()
  {
    $this->form = $this->forms['tesis'];
  }


}
