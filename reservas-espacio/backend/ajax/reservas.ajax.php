<?php

require_once "../controladores/reservas.controlador.php";
require_once "../modelos/reservas.modelo.php";

class AjaxReservas{

	public $idHabitacion;

	public function ajaxMostrarReservas(){

		$respuesta = ControladorReservas::ctrMostrarReservas("id_habitacion", $this->idHabitacion);

		echo json_encode($respuesta);

	}

	public $idReserva;
	public $fechaIngreso;
	public $fechaSalida;

	public function ajaxCambiarReserva(){

		$datos = array("id_reserva" => $this->idReserva,
					   "fecha_ingreso" => $this->fechaIngreso,
					   "fecha_salida" => $this->fechaSalida);

		$respuesta = ControladorReservas::ctrCambiarReserva($datos);

		echo $respuesta;

	}


}


if(isset($_POST["idHabitacion"])){

	$editar = new AjaxReservas();
	$editar -> idHabitacion = $_POST["idHabitacion"];
	$editar -> ajaxMostrarReservas();

}


if(isset($_POST["idReserva"])){

	$guardar = new AjaxReservas();
	$guardar -> idReserva = $_POST["idReserva"];
	$guardar -> fechaIngreso = $_POST["fechaIngreso"];
	$guardar -> fechaSalida = $_POST["fechaSalida"];
	$guardar -> ajaxCambiarReserva();

}