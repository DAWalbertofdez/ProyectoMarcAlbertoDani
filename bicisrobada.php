<!DOCTYPE html>
<html>
	<head>
		<title></title>
		
		<meta charset="utf-8"/>
	</head>
	<body>
		<?php
			$conexion=mysqli_connect("localhost", "root", "", "projecte1_bis");

			if($_REQUEST['nom']!=""){
					$q = "SELECT * FROM anunci WHERE anu_titol LIKE '%$_REQUEST[nom]%' AND anu_data_robatori LIKE '%$_REQUEST[fecha]%' AND anu_ubiacio_robatori LIKE '%$_REQUEST[ubi]%'
					AND anu_marca LIKE '%$_REQUEST[marca]%' AND anu_model LIKE '%$_REQUEST[modelo]%' AND anu_color LIKE '%$_REQUEST[color]%' AND anu_antiguitat LIKE '%$_REQUEST[anti]%'
					AND	anu_numero_serie LIKE '%$_REQUEST[serie]%' AND anu_compensacio LIKE '%$_REQUEST[comp]%'";
			} else {
					$q = "SELECT * FROM anunci";
			}

//			echo "$q<br/>";

//			  $consulta = mysqli_query($conexion, $q);

//				if(mysqli_num_rows($consulta)>0){
//				$num_productos = mysqli_num_rows($consulta);
//				echo "precio máximo: $_REQUEST[p_max]€<br/><br/>";
//				echo "mostrar $num_productos productos<br/><br/>";
//
//				while($producto=mysqli_fetch_array($consulta)){
//					echo "<div style='width: 200px; float: left; color: orange; background-color: yellow; margin-right: 10px; margin-bottom: 10px;'>";
//					echo "ID: $producto[pro_id]<br/>";
//					echo "Nombre: $producto[pro_nombre]<br/>";
//					echo "Descripción: $producto[pro_descripcion]<br/>";
//					echo "Precio: $producto[pro_precio]€<br/>";
//					echo "</div>";
//				}
//
//			} else {
//				echo "NO hay productos que mostrar";
//			}



		?>
	</body>
</html>