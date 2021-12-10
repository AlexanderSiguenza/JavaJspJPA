<%@page session="true" language="java" import="java.util.*" %>
<%@page import="edu.ujmd.jsporm.controladores.UsuariosJpaController" %>
<%@page import="edu.ujmd.jsporm.entidades.Usuarios" %>

<%   
    Usuarios usuEntity = new Usuarios();
    usuEntity.setUsuario(request.getParameter("usuario"));
    usuEntity.setContraseña(request.getParameter("clave"));
    
    UsuariosJpaController usuControlador = new UsuariosJpaController();
    //usuControlador.create(usuEntity);
    usuControlador.searchUser(usuEntity);
     
    String resultado = "";

    if (resultado == null || resultado.isEmpty()) {       
        //Se asignan parametros de sesión
        HttpSession sesionOk = request.getSession();
        sesionOk.setAttribute("usuario",usuEntity.getUsuario());
%>
<jsp:forward page="menu.jsp" />
<%} else { %>
<jsp:forward page="login.jsp">
    <jsp:param name="error" value="Usuario y/o clave Incorrecto. Vuelve a intentarlo"/>
</jsp:forward>
<%
    }
%>