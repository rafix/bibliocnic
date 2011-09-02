<?php
/**
 * Solicitud prestamo components
 * 
 * No redirection nor database manipulation ( insert, update, delete ) here
 */
class solicitudPrestamoComponents extends myFrontModuleComponents
{

  public function executeForm()
  {
    $this->form = $this->forms['SolicitudPrestamo'];
  }

  public function executeList()
  {
    $query = $this->getListQuery();
    
    $this->solicitudPrestamoPager = $this->getPager($query);
  }


}
