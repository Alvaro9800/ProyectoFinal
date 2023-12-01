<?php

require_once "../controladores/restaurante.controlador.php";
require_once "../modelos/restaurante.modelo.php";

class TablaRestaurante{

	public function mostrarTabla(){

		$restaurante = ControladorRestaurante::ctrMostrarRestaurante(null, null);

		if(count($restaurante)== 0){

 			$datosJson = '{"data": []}';

			echo $datosJson;

			return;

 		}

 		$datosJson = '{

	 	"data": [ ';

	 	foreach ($restaurante as $key => $value) {

			$img = "<img src='".$value["img"]."' class='img-fluid rounded-circle' width='100px'>";
			
			$acciones = "<div class='btn-group'><button class='btn btn-warning btn-sm editarRestaurante' data-toggle='modal' data-target='#editarRestaurante' idRestaurante='".$value["id"]."'><i class='fas fa-pencil-alt text-white'></i></button><button class='btn btn-danger btn-sm eliminarRestaurante' idRestaurante='".$value["id"]."' imgRestaurante='".$value["img"]."'><i class='fas fa-trash-alt'></i></button></div>";	


			$datosJson.= '[
							
						"'.($key+1).'",
						"'.$img.'",
						"'.$value["descripcion"].'",
						"'.$acciones.'"
						
				],';

		}

		$datosJson = substr($datosJson, 0, -1);

		$datosJson.=  ']

		}';

		echo $datosJson;

	}

}

$tabla = new TablaRestaurante();
$tabla -> mostrarTabla();
