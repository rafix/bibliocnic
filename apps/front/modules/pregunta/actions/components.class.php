<?php
/**
 * Pregunta components
 * 
 * No redirection nor database manipulation ( insert, update, delete ) here
 */
class preguntaComponents extends myFrontModuleComponents
{

  public function executeForm()
  {
    $this->form = $this->forms['pregunta'];
  }

  public function executeList()
  {
    $query = $this->getListQuery();
    
    $this->preguntaPager = $this->getPager($query);
  }

  public function executeShow()
  {
    $query = $this->getShowQuery();
    
    $this->pregunta = $this->getRecord($query);
  }


}
