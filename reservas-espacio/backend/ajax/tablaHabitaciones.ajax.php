<?php

require_once "../controladores/habitaciones.controlador.php";
require_once "../modelos/habitaciones.modelo.php";

class TablaHabitaciones{

	public function mostrarTabla(){

		$habitaciones = ControladorHabitaciones::ctrMostrarHabitaciones(null);

		if(count($habitaciones)== 0){

 			$datosJson = '{"data": []}';

			echo $datosJson;

			return;

 		}

 		$datosJson = '{

	 	"data": [ ';

	 	foreach ($habitaciones as $key => $value) {

			$acciones = "<a href='index.php?pagina=habitaciones&id_h=".$value["id_h"]."' class='btn btn-secondary btn-sm'><i class='far fa-eye'></i></a>";	


			$datosJson.= '[
							
						"'.($key+1).'",
						"'.$value["tipo"].'",
						"'.$value["estilo"].'",
						"'.$acciones.'"
						
				],';

		}

		$datosJson = substr($datosJson, 0, -1);

		$datosJson.=  ']

		}';

		echo $datosJson;

	}

}

$tabla = new TablaHabitaciones();
$tabla -> mostrarTabla();
