<?php

class ControladorTestimonios{

	static public function ctrMostrarTestimonios($item, $valor){

		$tabla = "testimonios";

		$respuesta = ModeloTestimonios::mdlMostrarTestimonios($tabla, $item, $valor);

		return $respuesta;

	}

	static public function ctrMostrarTestimoniosInnerJoin($item, $valor){

		$tabla1 = "testimonios";
		$tabla2 = "reservas";
		$tabla3 = "usuarios";

		$respuesta = ModeloTestimonios::mdlMostrarTestimoniosInnerJoin($tabla1, $tabla2, $tabla3, $item, $valor);

		return $respuesta;

	}

}