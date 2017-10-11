<%@ page pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8" />
        <title>Test</title>
    </head>

    <body>
        <p>Ceci est une page générée depuis une JSP.</p>
        <%-- com.cgi.beans.Coyote beanJsp = (com.cgi.beans.Coyote) request.getAttribute("bean");
        out.println(beanJsp.getPrenom());
        out.println(beanJsp.getNom()); --%>
        <%--
        String param = (String) request.getAttribute("test");
        out.println(param);        
         --%>
         <jsp:useBean id="coyote" class="com.cgi.beans.Coyote" scope="request"></jsp:useBean>
         <jsp:setProperty property="*" name="coyote"/>
         <jsp:setProperty value="Korben" property="prenom" name="coyote"/>
         <jsp:setProperty param="sexe" property="nom" name="coyote"/>
         
         <jsp:getProperty property="prenom" name="coyote"/>
         <jsp:getProperty property="nom" name="coyote"/>
    </body>
</html>