<?php

require_once "../controladores/reservas.controlador.php";
require_once "../modelos/reservas.modelo.php";

require_once "../controladores/testimonios.controlador.php";
require_once "../modelos/testimonios.modelo.php";

class AjaxUsuarios{


	public $idUsuarioR;

	public function ajaxSumarReservas(){

		$respuesta = ControladorReservas::ctrMostrarReservas("id_usuario", $this->idUsuarioR);

		echo json_encode($respuesta);

	}

	public $idUsuarioT;

	public function ajaxSumarTestimonios(){

		$respuesta = ControladorTestimonios::ctrMostrarTestimonios("id_us", $this->idUsuarioT);

		echo json_encode($respuesta);

	}

}

if(isset($_POST["idUsuarioR"])){

	$sumaReserva = new AjaxUsuarios();
	$sumaReserva -> idUsuarioR = $_POST["idUsuarioR"];
	$sumaReserva -> ajaxSumarReservas();

}

if(isset($_POST["idUsuarioT"])){

	$sumaTestimonio = new AjaxUsuarios();
	$sumaTestimonio -> idUsuarioT = $_POST["idUsuarioT"];
	$sumaTestimonio -> ajaxSumarTestimonios();

}