
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>

    MORENITO |  Tu tienda ciclista online

</title>

    <link type="image/x-icon" href="..\Content\images\favicon.ico" rel="icon">
    <link type="image/x-icon" href="..\Content\images\favicon.ico" rel="shortcut icon">


    <link href="..\Content\morenito.css" type="text/css" rel="stylesheet" media="all">
    <link href="..\tweet\jquery.tweet.css" type="text/css" rel="stylesheet" media="all">
<script>
                window.onload = function(){
                $busqueda = "SELECT * FROM anunci ORDER BY anu_data_robatori DESC";
                    $resultado = mysqli_query($conexion, $busqueda);
                    if(mysqli_num_rows($resultado)){
                        echo "<b>SI HAY BICICLETAS QUE MOSTRAR<b>";
                            while($anunci=mysqli_fetch_array($resultado)){
                    echo "<b>幹echa de robo: </b>$anunci[anu_data_robatori]<br/>  ";
                                    echo "<b>意ombre de la bicicleta: </b>$anunci[anu_titol]<br/>  ";
                                    echo "<b>愈bicacion: </b>$anunci[anu_ubicacio_robatori]<br/>  ";
            echo "<b>愚arca: </b>$anunci[anu_marca]<br/>  ";
                                    echo "<b>愚odelo: </b>$anunci[anu_model]<br/>  ";
            echo "<b>umero de serie: </b>$anunci[anu_numero_serie]<br/>  ";
                                    echo "<b>嵩olor: </b>$anunci[anu_color]<br/><br/>";
                            }
                }
</script>
    <script src="..\Scripts\json2.js" type="text/javascript"></script>
    <script src="..\Scripts\jquery-1.4.1.min.js" type="text/javascript"></script>
    <script type="text/javascript" src="http://widgets.twimg.com/j/2/widget.js"></script>
    <script type="text/javascript" src="..\Scripts\jquery.easing.1.3.js"></script>
    <script src="..\Scripts\preloadCSSImages.js" type="text/javascript"></script>
    <script src="..\Scripts\jquery.dimensions.min.js" type="text/javascript"></script>
    <script src="..\Scripts\jquery.jcarousellite.min.js" type="text/javascript"></script>
    <script src="..\Scripts\basico.js" type="text/javascript"></script>
    <script type="text/javascript">
       function validarBuscador() {
       var palabra= trim($("#palabra").val());
           if (palabra== '') {
               alert("No ha introducido ning\u00FAn t\u00E9rmino en el buscador.\n");
               return false;
           }
          var simpleUrl = "/Tienda/Buscar" + "/" + palabra;
        document.location = simpleUrl;
        return false;
       }
   </script>
    <script type="text/javascript">
        $(document).ready(function(){
            menu(8);
        });
    </script>
</head>
<body>
    <div class="cabecera">
        <h1>
           <a href="..\index.htm">
                <img alt="Morenito" src="..\Content\images\logo.jpg">
           </a>
        </h1>
        <div style="float:right; position:relative; top:-34px; width:76px; ">
             <a href="http://www.facebook.com/bicicletas.morenito" target="_blank" style="display:block; float:left;">
                    <img alt="facebook" width="34" src="..\Content\images\facebook.png">
               </a>
               <a href="http://www.twitter.com/bicismorenito" target="_blank" style="display:block; float:left; margin-left:5px;">
                    <img alt="Morenito" width="34" src="..\Content\images\twitter.png">
               </a>
        </div>
    </div>
    <div class="ajuste">
        <div class="menu">
            <a href="#" id="m_0" title="Inicio"></a>
            <a href="#" id="m_1" title="Tienda online"></a>
            <a href="#" id="m_4" title="Contacta"></a>
            <a href="#" id="m_3" title="Outlet"></a>
            <a href="#" id="m_9" title="Ofertas"></a>
            <a href="#" id="m_10" title="Novedades"></a>
            <a href="#" id="m_2" title="Quiénes somos"></a>
            <a href="#" id="m_5" title="Nuestras tiendas"></a>
            <a href="#" id="m_7" title="Consejos"></a>
            <a href="#" id="m_8" title="Bicis Robadas"></a>
        </div>
        <div class="buscador">
        <input type="text" id="palabra" value="Escribe aquí tu búsqueda" onclick="this.value=''" onkeypress="return clickenter(event)">
                    <select name="categoriasList">
                        <option>Productos
                    </select>
                    <input type="button" class="buscar" value="" id="botonBuscar" >
        </div>
    </div>
    <div class="interior100">
        <div class="ajuste"><h2>BICIS ROBADAS, <span class="gris">aquí se supone que encontrarás tu bicicleta</span></h2></div>
    </div>
    <div class="ajusteContacto">
        <div class="contTiendas">
            <div class="noticias">
                <div class="noticiaListado scroll">
<?php
            $conexion=mysqli_connect("localhost", "root", "", "projecte1_bis");
            $acentos=mysqli_query($conexion, "SET NAMES 'utf8'");
            if(isset($_REQUEST['marca'])){
              //  if($_REQUEST['marca']!=""){
                        $q = "SELECT * FROM anunci WHERE anu_marca LIKE '%$_REQUEST[marca]%' AND anu_ubicacio_robatori LIKE '%$_REQUEST[ubi]%' AND anu_color LIKE '$_REQUEST[color]%' ORDER BY anu_data_robatori AND anu_titol LIKE '%$_REQUEST[nom]%' AND anu_model LIKE '%$_REQUEST[modelo]%'";
              //  } else {
              //          $q = "SELECT * FROM anunci ORDER BY anu_data_robatori DESC";
               // }
            } else {
                $q = "SELECT * FROM anunci ORDER BY anu_data_robatori DESC";
            }
            "$q<br/>";
            $consulta = mysqli_query($conexion, $q);
            if(mysqli_num_rows($consulta)>0){
              // echo "<b>SI HAY BICICLETAS QUE MOSTRAR<b><br/><br/>";
               while($anunci=mysqli_fetch_array($consulta)){
                   // echo "·Fecha de robo: $anunci[anu_data_robatori]<br/>  ";
                    echo "<img src='../img/$anunci[anu_foto]' >";
                    echo "<a>Nombre de la bicicleta: </a>$anunci[anu_titol]<br/>  ";
                    echo "<a>Ubicación: </a>$anunci[anu_ubicacio_robatori]<br/>  ";
                    echo "<a>Marca: </a>$anunci[anu_marca]<br/>  ";
                    echo "<a>Modelo: </a>$anunci[anu_model]<br/>  ";
                    echo "<a>Fecha del robo: </a>$anunci[anu_data_robatori]<br/>  ";
                    echo "<a>Color: </a>$anunci[anu_color]<br/>";
                    echo '';
                    echo "────────────────────────────────────────<br/>"  ;
                }
            } else {
                echo "<b>NO HAY BICICLETAS QUE MOSTRAR<b><br/>";
            }
?>
<br/>
</div>
            </div>
            <!--noticias -->
            <div class="noticias" id="not">
        <form  method="post" name="formulario">
        <!--<label class="description" for="element_1">Nombre de la bicicleta</label>-->
        <a>Nombre de la bicicleta</a>
        <div>
            <input id="nom" name="nom" class="element text medium" type="text" maxlength="50" value=""/>
        </div>
<br>
        <!--<label class="description" for="element_4">Ubicación del robo </label>-->
        <a>Ubicación del robo</a>
        <div>
            <input id="ubi" name="ubi" class="element text medium" type="text" maxlength="35" value=""/>
        </div>
<br>
        <!--<label class="description" for="element_6">Marca </label>-->
        <a>Marca</a>
        <div>
            <input  id="marca" name="marca" class="element text medium" type="text" maxlength="15" value=""/>
        </div>
<br>
        <!--<label class="description" for="element_7">Modelo </label>-->
        <a>Modelo</a>
        <div>
            <input id="modelo" name="modelo" class="element text medium" type="text" maxlength="25" value=""/>
        </div>
<br>
        <!--<label class="description" for="element_8">Color </label>-->
        <a>Color</a>
        <div>
            <input id="color" name="color" class="element text medium" type="text" maxlength="25" value=""/>
        </div>
<br>
        <!--<label class="description" for="element_11">Número de serie</label>-->
   <!--     <a>Número de serie</a>
        <div>
            <input id="serie" name="serie" type="Text" maxlength="15" value=""/>
        </div>
<br>-->
                <input type="hidden" name="form_id" value="54831" />
                <input class="buscar" type="submit" value="" >
            </div><!--noticias -->
        </div><!--contTiendas -->
        </div><!--contContacto -->
    <div class="pie">
    <div class="ajustePie">
        <div class="logoInferior"><img src="..\Content\images\logo-pie2.jpg" alt="Morenito, tu tienda ciclista online" title="Morenito, tu tienda ciclista online"></div>
        <div class="direccion">
            <p><strong>MORENITO VILLALBA</strong></p>
            <p>AVENIDA REINA VICTORIA,39<br>
            28439 LOS NEGRALES<br>
            ALPEDRETE (MADRID)<br>
            Tel. 91 851 39 38<br>
            <a href="mailto:madrid@morenito.com">madrid@morenito.com</a></p>
        </div>
      <div class="horario">
            <p><strong>Horario:</strong></p>
            <p>- Mañanas de 10h. a 14h.<br>
            - Tardes de 17h. a 20:30h.<br>
            - Sabados tarde Cerrado</p>
        </div><!-- horario-->
        <div class="direccion">
            <p><strong>MORENITO TERRASSA</strong></p>
            <p>Ctra. Montcada, Nº398<br>
            08223 Terrassa (BCN)<br>
            Tel. 93 785 50 68<br>
            <a href="mailto:infoterrassa@morenito.com">infoterrassa@morenito.com</a></p>
        </div>
        <div class="horario">
            <p><strong>Horario:</strong></p>
            <p>- Mañanas de 9:00 a 13:30 <br>
                - Tardes de 17:00 a 20:30 de Lunes a Viernes <br>
                - Sábados de 9:00 a 14:00 h.<br></p>
        </div>
        <div class="tfnoInferior">
                <img src="..\Content\images\tfon_inf.gif" alt="Atenci&oacute;n al cliente 91 851 95 35" title="Atenci&oacute;n al cliente 91 851 95 35">
                <div style="float:left; position:relative; top:-19px; width:52px; left:52px; ">
                     <a href="http://www.facebook.com/bicicletas.morenito" target="_blank" style="display:block; float:left;">
                            <img alt="facebook" width="22" src="..\Content\images\facebook.png">
                       </a>
                       <a href="http://www.twitter.com/bicismorenito" target="_blank" style="display:block; float:left; margin-left:5px;">
                            <img alt="Morenito" width="22" src="..\Content\images\twitter.png">
                       </a>
                </div>
        </div>
         <div class="legales">Copyright ® 2010 Morenito&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="javascript:abrir('/Content/aviso_legal.html',807,471,'yes')">Aviso legal</a> | <a href="javascript:abrir('/Content/politica.html',807,471,'yes')">Política de privacidad</a> | <a href="javascript:abrir('/Content/datos.html',807,300,'no')">Datos identificativos</a></div>
    </div>
</div>
    </body>
</html>