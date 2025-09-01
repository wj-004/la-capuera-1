<?php
	
	namespace app\models;

	class viewsModel{

		/*---------- Modelo obtener vista ----------*/
		protected function obtenerVistasModelo($vista){
    
			$listaBlanca=["dashboard",
			"cashierNew","cashierList","cashierSearch","cashierUpdate",
			"userNew","userList","userUpdate","userSearch","userPhoto",
			"clientNew","clientList","clientSearch","clientUpdate",
			"categoryNew","categoryList","categorySearch","categoryUpdate",
			"productNew","productList","productSearch","productUpdate","productPhoto","productCategory",
			"companyNew",
			"saleNew","saleList","saleSearch","saleDetail",
			"logOut","productSync"];
            
            if($_SESSION['usuario'] != "Administrador"){
                $listaBlanca=["dashboard","cashierNew","cashierList","cashierSearch","cashierUpdate",
                "userUpdate","userPhoto",
                "clientNew","clientList","clientSearch","clientUpdate",
                "productList","productSearch","productPhoto","productCategory",
                "saleNew","saleList","saleSearch","saleDetail",
                "logOut","productSync"];
            }

			if(in_array($vista, $listaBlanca)){
				if(is_file("./app/views/content/".$vista."-view.php")){
					$contenido="./app/views/content/".$vista."-view.php";
				}else{
					$contenido="404";
				}
			}elseif($vista=="login" || $vista=="index"){
				$contenido="login";
			}else{
				$contenido="404";
			}
			return $contenido;
		}

	}