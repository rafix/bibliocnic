<?php
/**
 * Monografia components
 * 
 * No redirection nor database manipulation ( insert, update, delete ) here
 * 
 */
class monografiaComponents extends myFrontModuleComponents
{

  public function executeForm()
  {
    $this->form = $this->forms['monografia'];
  }

  public function executeList()
  {
    $query = $this->getListQuery();
    
    $this->monografiaPager = $this->getPager($query);
	$this->getUser()->setAttribute('recurso', $this->monografia);
	
  }

  public function executeShow()
  {
    $query = $this->getShowQuery();
    
    $this->monografia = $this->getRecord($query);
  }


}
