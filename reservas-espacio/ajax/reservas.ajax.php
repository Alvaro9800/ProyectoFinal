<?php

require_once "../controladores/reservas.controlador.php";
require_once "../modelos/reservas.modelo.php";


class AjaxReservas{

	public $idHabitacion;

	public function ajaxTraerReserva(){

		$valor = $this->idHabitacion;

		$respuesta = ControladorReservas::ctrMostrarReservas($valor);

		echo json_encode($respuesta);

	}

	public $codigoReserva;

	public function ajaxTraerCodigoReserva(){

		$valor = $this->codigoReserva;

		$respuesta = ControladorReservas::ctrMostrarCodigoReserva($valor);

		echo json_encode($respuesta);

	}

	public $idHabitaciones;
	public $fechaIngreso;
	public $fechaSalida;

	public function ajaxTraerReservas(){

		$valor = $this->idHabitaciones;
		$fechaIngreso = $this->fechaIngreso;
		$fechaSalida = $this->fechaSalida;

		$respuesta = ControladorReservas::ctrMostrarReservas($valor);

		if($respuesta != 0){

			foreach ($respuesta as $key => $value) {

				if($fechaIngreso == $value["fecha_ingreso"] ||
				   $fechaIngreso > $value["fecha_ingreso"] && $fechaIngreso < $value["fecha_salida"] ||
				   $fechaIngreso < $value["fecha_ingreso"] && $fechaSalida > $value["fecha_ingreso"]){

					echo json_encode($value["id_h"]);

					return;

				}
				
			}
		}

		echo json_encode("");

	}

	public $id_h;

	public function ajaxTraerTestimonios(){

		$item = "id_hab";
		$valor = $this->id_h;

		$respuesta = ControladorReservas::ctrMostrarTestimonios($item, $valor);

		echo json_encode($respuesta);

	}


}


if(isset($_POST["idHabitacion"])){

	$idHabitacion = new AjaxReservas();
	$idHabitacion -> idHabitacion = $_POST["idHabitacion"];
	$idHabitacion -> ajaxTraerReserva();

}

if(isset($_POST["codigoReserva"])){

	$codigoReserva = new AjaxReservas();
	$codigoReserva -> codigoReserva = $_POST["codigoReserva"];
	$codigoReserva -> ajaxTraerCodigoReserva();

}





if(isset($_POST["idHabitaciones"])){

	$idHabitaciones = new AjaxReservas();
	$idHabitaciones -> idHabitaciones = $_POST["idHabitaciones"];
	$idHabitaciones -> fechaIngreso = $_POST["fechaIngreso"];
	$idHabitaciones -> fechaSalida = $_POST["fechaSalida"];
	$idHabitaciones -> ajaxTraerReservas();

}


if(isset($_POST["id_h"])){

	$id_h = new AjaxReservas();
	$id_h -> id_h = $_POST["id_h"];
	$id_h -> ajaxTraerTestimonios();

}