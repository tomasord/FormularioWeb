<%@page import = "java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style.css">
        <title>Formulario de Vehiculos</title>
    </head>
    <body>
        <nav>
            <div class="brand_imagen">
                <img class="logo" src="./imagenes/logo.png" alt="Atrium" width="90px">
            </div>
        </nav>
        <div class="titulo">
                <h1>Vehiculo Registrado</h1>
            </div>
        <div class="caja">
            <img class ="check_logo" src="./imagenes/chek.png" alt="check" width="90px" />
        </div>
            <%
                String matricula,marca,modelo,color,fechamatriculacion,codcliente;
           matricula = request.getParameter("matricula");
           marca = request.getParameter("marca");
           modelo = request.getParameter("modelo");
           color = request.getParameter("color");
           fechamatriculacion = request.getParameter("fechamatriculacion");
           codcliente = request.getParameter("codcliente");
           
           try{
                Class.forName("com.mysql.jdbc.Driver");
                    System.out.println("Registrado el driver MySql");
                    String url = "jdbc:mysql:///web";
                    String user="root";
                    String pwd="mysql";
                    
                    Connection connection=DriverManager.getConnection(url, user, pwd);
                    String sql= "INSERT INTO vehiculos VALUES("+"'"+matricula+"'"+","+"'"+marca+"'"+","+"'"+modelo+"'"+","+"'"+color+"'"+","+"'"+fechamatriculacion+"'"+","+"'"+codcliente+"'"+")";
                    Statement stmt = connection.createStatement();
                    stmt.execute(sql);
                    connection.close();
                    System.out.println("\nConexion Cerrada\n");
			}catch(Exception e) {
				e.printStackTrace();
                }
        %>
        <a class ="boton2" href="./index.html" target="_blank">INICIO</a>

        
    </body>
</html>
