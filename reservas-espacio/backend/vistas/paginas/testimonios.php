<?php 

if(isset($_GET["not"])){

  $respuesta = ControladorInicio::ctrActualizarNotificaciones("testimonios", 0);

}

?>

<div class="content-wrapper" style="min-height: 717px;">
  <!-- Content Header (Page header) -->
  <section class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1>Gestor Testimonios</h1>
        </div>
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="inicio">Inicio</a></li>
            <li class="breadcrumb-item active">Gestor Testimonios</li>
          </ol>
        </div>
      </div>
    </div><!-- /.container-fluid -->
  </section>

  <!-- Main content -->
 <section class="content">

    <div class="card card-primary card-outline">

      <div class="card-body">

        <table class="table table-bordered table-striped dt-responsive tablaTestimonios" width="100%">
        
          <thead>

            <tr>

              <th style="width:10px">#</th>
              <th>Reserva</th>
              <th>Usuario</th> 
              <th>Espacio</th>
              <th>Testimonio</th> 
              <th>Estado</th>
              <th>Fecha</th>     

            </tr>   

          </thead>

          <tbody>

          </tbody>

        </table>

      </div>

    </div>
    <!-- /.card -->
  </section>
  <!-- /.content -->
</div>