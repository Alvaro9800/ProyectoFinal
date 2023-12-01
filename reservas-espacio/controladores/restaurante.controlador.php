<?php

Class ControladorRestaurante{

	static public function ctrMostrarRestaurante(){

		$tabla = "restaurante";

		$respuesta = ModeloRestaurante::mdlMostrarRestaurante($tabla);

		return $respuesta;

	}

}