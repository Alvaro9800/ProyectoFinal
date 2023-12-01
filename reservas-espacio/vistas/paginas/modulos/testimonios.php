<?php

$valor = $_GET["pagina"];

$habitaciones = ControladorHabitaciones::ctrMostrarHabitaciones($valor);

$testimonios = ControladorReservas::ctrMostrarTestimonios("id_hab", $habitaciones[0]["id_h"]);
?>
