<?php
/**
 * Documento legal components
 * 
 * No redirection nor database manipulation ( insert, update, delete ) here
 */
class documentoLegalComponents extends myFrontModuleComponents
{
public function executeList()
  {
    $query = $this->getListQuery();
    
    $this->documentoLegalPager = $this->getPager($query);
  }

  public function executeShow()
  {
    $query = $this->getShowQuery();
    
    $this->documentoLegal = $this->getRecord($query);
	$this->getUser()->setAttribute('recurso', $this->documentoLegal);
  }

  public function executeForm()
  {
    $this->form = $this->forms['documentolegal'];
  }


}
