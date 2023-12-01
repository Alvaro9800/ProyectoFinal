<?php

class ControladorReservas{

	static public function ctrMostrarReservas($item, $valor){

		$tabla1 = "usuarios";
		$tabla2 = "reservas";

		$respuesta = ModeloReservas::mdlMostrarReservas($tabla1, $tabla2, $item, $valor);

		return $respuesta;

	}

	static public function ctrCambiarReserva($datos){

		$tabla = "reservas";

		$respuesta = ModeloReservas::mdlCambiarReserva($tabla, $datos);

		return $respuesta;

	}

}