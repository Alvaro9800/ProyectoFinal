<?php

require_once "../controladores/restaurante.controlador.php";
require_once "../modelos/restaurante.modelo.php";

class AjaxRestaurante{


	public $idRestaurante;

	public function ajaxMostrarRestaurante(){

		$respuesta = ControladorRestaurante::ctrMostrarRestaurante("id", $this->idRestaurante);

		echo json_encode($respuesta);

	}

	public $idEliminar;
	public $imgRestaurante;


	public function ajaxEliminarRestaurante(){

		$respuesta = ControladorRestaurante::ctrEliminarRestaurante($this->idEliminar, $this->imgRestaurante);

		echo $respuesta;

	}
}


if(isset($_POST["idRestaurante"])){

	$editar = new AjaxRestaurante();
	$editar -> idRestaurante = $_POST["idRestaurante"];
	$editar -> ajaxMostrarRestaurante();

}


if(isset($_POST["idEliminar"])){

	$eliminar = new AjaxRestaurante();
	$eliminar -> idEliminar = $_POST["idEliminar"];
	$eliminar -> imgRestaurante = $_POST["imgRestaurante"];
	$eliminar -> ajaxEliminarRestaurante();

}