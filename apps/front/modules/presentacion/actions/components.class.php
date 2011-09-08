<?php
/**
 * Presentacion components
 * 
 * No redirection nor database manipulation ( insert, update, delete ) here
 */
class presentacionComponents extends myFrontModuleComponents
{

  public function executeList()
  {
    $query = $this->getListQuery();
    
    $this->presentacionPager = $this->getPager($query);
  }

  public function executeShow()
  {
    $query = $this->getShowQuery();
    
    $this->presentacion = $this->getRecord($query);
	$this->getUser()->setAttribute('recurso', $this->presentacion);
  }

  public function executeForm()
  {
    $this->form = $this->forms['Presentacion'];
  }


}
