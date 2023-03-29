<%-- 
    Document   : jsp2
    Created on : 28/03/2023, 08:03:58 PM
    Author     : admin
--%>
<%@page import="java.util.List"%>
<%@page import="org.admin.Datos"%>
<%@page import="org.admin.Negocio"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <link rel="stylesheet" href="cssJsp2.css"/>
    </head>
    <body>
        <h1>RECOPILACIÓN DE DATOS</h1><br>
        <%
            int i = 0;
            List<Datos> lista = null;
            String id = null;
            String borrar = null;
            session = request.getSession( true );
            
            if( session != null )
            {
                if( session.getAttribute("lista") != null )
                {
                    lista = (List)session.getAttribute( "lista" );
                }
            }
            id = request.getParameter( "id" );
            borrar = request.getParameter( "borrar" );
            if( "Submit".equals( borrar ) )
            {
                lista.remove( Integer.parseInt(id) );
            }
        %>
        <div class="position-relative">
            <div class="position-absolute top-0 start-0">
                <a href="jsp1.jsp" class="btn btn-secondary btn-lg" tabindex="-1" role="button" aria-disabled="true">IR A JSP1</a>
            </div>
        </div>
        <div class="position-relative">
            <div class="position-absolute top-0 start-50 translate-middle-x">
                <a href="jsp3.jsp" class="btn btn-dark btn-lg" tabindex="-1" role="button" aria-disabled="true">IR A JSP3</a>
            </div>
        </div><br><br><br>
        
        <table class="table table-dark table-striped" border="1">
            <tr>
                <td>#</td>
                <td>Id</td>
                <td>Nombre</td>
                <td>Calif</td>
                <td>Acciones</td>
            </tr>
            <%
              if( lista != null && !lista.isEmpty() )
              {
                for( Datos datos : lista)
                {
            %>
            <tr>
                <td><%=i + 1%></td>
                <td><%=i%></td>
                <td><%=datos.getNombre( )%></td>
                <td><%=datos.getCalf()%></td>
                <td>
                    <a href="jsp2.jsp?id=<%=i%>&borrar=Submit">Borrar</a> 
                    <a href="jsp3.jsp?id=<%=i++%>&editar=Submit">Editar</a> 
                </td>
            </tr>
            <%
                }
              }
            %>
        </table>
    </body>
</html>
