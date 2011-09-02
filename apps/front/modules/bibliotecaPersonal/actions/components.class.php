<?php
/**
 * Biblioteca personal components
 * 
 * No redirection nor database manipulation ( insert, update, delete ) here
 */
class bibliotecaPersonalComponents extends myFrontModuleComponents
{

  public function executeList()
  {
    $query = $this->getListQuery();
    
    $this->bibliotecaPersonalPager = $this->getPager($query);
  }

  public function executeShow()
  {
    $query = $this->getShowQuery();
    
    $this->bibliotecaPersonal = $this->getRecord($query);
	$this->getUser()->setAttribute('recurso', $this->bibliotecaPersonal);
  }

  public function executeForm()
  {
    $this->form = $this->forms['bibliotecapersonal'];
  }


}
