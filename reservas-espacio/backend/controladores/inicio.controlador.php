<?php

class ControladorInicio{

	static public function ctrSumarVentas(){

		$tabla = "reservas";

		$respuesta = ModeloInicio::mdlSumarVentas($tabla);
		
		return $respuesta;

	}	

	static public function ctrMejorHabitacion(){

		$tabla = "reservas";

		$respuesta = ModeloInicio::mdlMejorHabitacion($tabla);
		
		return $respuesta;

	}	

	static public function ctrPeorHabitacion(){

		$tabla = "reservas";

		$respuesta = ModeloInicio::mdlPeorHabitacion($tabla);
		
		return $respuesta;

	}	

	static public function ctrTraerFotoHabitacion($valor){

		$tabla1 = "reservas";
		$tabla2 = "habitaciones";

		$respuesta = ModeloInicio::mdlTraerFotoHabitacion($tabla1, $tabla2, $valor);
		
		return $respuesta;

	}	

	static public function ctrMostrarNotificaciones(){

		$tabla = "notificaciones";

		$respuesta = ModeloInicio::mdlMostrarNotificaciones($tabla);
		
		return $respuesta;

	}	

	static public function ctrActualizarNotificaciones($tipo, $cantidad){

		$tabla = "notificaciones";

		$respuesta = ModeloInicio::mdlActualizarNotificaciones($tabla, $tipo, $cantidad);
		
		return $respuesta;

	}	


}