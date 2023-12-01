<?php

require_once "conexion.php";

Class ModeloBanner{

	
	static public function mdlMostrarBanner($tabla){

		$stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla ORDER BY id DESC");

		$stmt -> execute();

		return $stmt -> fetchAll();

		$stmt -> close();

		$stmt = null;

	}

}