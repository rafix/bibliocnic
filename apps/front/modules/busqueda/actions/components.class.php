<?php
/**
 * Busqueda components
 * 
 * No redirection nor database manipulation ( insert, update, delete ) here
 * 
 */
class busquedaComponents extends myFrontModuleComponents
{

  public function executeForm()
  {
    $this->form = $this->forms['busqueda'];
  }


}
