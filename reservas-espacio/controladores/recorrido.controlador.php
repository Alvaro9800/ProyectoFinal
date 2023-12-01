<?php

Class ControladorRecorrido{

	static public function ctrMostrarRecorrido(){

		$tabla = "recorrido";

		$respuesta = ModeloRecorrido::mdlMostrarRecorrido($tabla);

		return $respuesta;

	}

}