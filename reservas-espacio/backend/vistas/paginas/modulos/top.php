<?php 

$sumaVentas = ControladorInicio::ctrSumarVentas();

$totalReservas = ControladorReservas::ctrMostrarReservas(null, null);

$totalUsuarios = ControladorUsuarios::ctrMostrarUsuarios(null, null);

$totalTestimonios = ControladorTestimonios::ctrMostrarTestimonios(null, null);

?>

<div class="col-12 col-sm-6 col-lg-3">

  <div class="small-box bg-info">

    <div class="inner">

      <h3>S/ <span><?php echo number_format($sumaVentas["total"], 2, ",", "."); ?></span></h3>

      <p class="text-uppercase">Ventas Totales</p>

    </div>

    <div class="icon">

      <i class="fas fa-dollar-sign"></i>

    </div>

    <a href="reservas" class="small-box-footer">Más información <i class="fa fa-arrow-circle-right"></i></a>

  </div>

</div>

<div class="col-12 col-sm-6 col-lg-3">

  <div class="small-box bg-primary">

    <div class="inner">

      <h3><?php echo count($totalReservas); ?></h3>

      <p class="text-uppercase">Reservas</p>

    </div>

    <div class="icon">

      <i class="far fa-calendar-alt"></i>

    </div>

    <a href="reservas" class="small-box-footer">Más información <i class="fa fa-arrow-circle-right"></i></a>

  </div>

</div>

<div class="col-12 col-sm-6 col-lg-3">

  <div class="small-box bg-dark">

    <div class="inner">

      <h3><?php echo count($totalUsuarios); ?></h3>

      <p class="text-uppercase">Usuarios</p>

    </div>

    <div class="icon">

      <i class="fas fa-users"></i>

    </div>

    <a href="usuarios" class="small-box-footer">Más información <i class="fa fa-arrow-circle-right"></i></a>

  </div>

</div>

<div class="col-12 col-sm-6 col-lg-3">

  <div class="small-box bg-secondary">

    <div class="inner">

      <h3><?php echo count($totalTestimonios); ?></h3>

      <p class="text-uppercase">Testimonios</p>

    </div>

    <div class="icon">

      <i class="fas fa-user-check"></i>

    </div>

    <a href="testimonios" class="small-box-footer">Más información <i class="fa fa-arrow-circle-right"></i></a>

  </div>

</div> 

