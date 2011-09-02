<?php
/**
 * Autor components
 * 
 * No redirection nor database manipulation ( insert, update, delete ) here
 * 
 */
class autorComponents extends myFrontModuleComponents
{

  public function executeForm()
  {
    $this->form = $this->forms['Autor'];
  }

  public function executeList()
  {
    $query = $this->getListQuery();
    
    $this->autorPager = $this->getPager($query);
  }


}
