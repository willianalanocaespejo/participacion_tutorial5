

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
          <div align="center">
        <h1>Login con Servlet</h1>
        <%
            String msg = (String) session.getAttribute("error");
            if (msg != null) {
        %>
        <p style="color:red"><%= msg%> </p>
        <%
                session.invalidate();
            }
        %>
        
        <form action="LoginSession" method="POST">
            <table  cellpadding="1">
          
                <tbody>
                    <tr>
                        <td>Usuario: </td>
                        <td> <input type="text" name="usuario" /> </td>
                    </tr>
                    <tr>
                        <td>Clave: </td>
                        <td> <input type="text" name="password" /> </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td> <input type="submit" value="Ingresar" /> </td>
                    </tr>
                </tbody>
            </table>

        </form>
          </div>
    </body>
</html>
