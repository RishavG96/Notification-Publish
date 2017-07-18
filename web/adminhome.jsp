<%-- 
    Document   : adminhome
    Created on : Jul 18, 2017, 9:11:28 AM
    Author     : mahe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Page</title>
    </head>
    <%
        if(session.getAttribute("u")==null)
        {
            session.setAttribute("errorMsg", "Your session has expired, please login to continue");
            response.sendRedirect("index.jsp");
        }
        else if(session.getAttribute("role").equals("user"))
        {
            response.sendRedirect("userhome.jsp");
        }
        %>
    <body>
        <center>
            <div style="background: #ca4335; width:500px; margin-top: 200px; border-radius: 10px; box-shadow: 2px 2px 2px black">
                <h1>Welcome admin <%out.print(session.getAttribute("u"));%></h1>
                <a href="AddNotice">Add Notice</a> &nbsp;&nbsp;&nbsp;&nbsp;
                <form action="Logout" method="post">
                    <input type="submit" value="LOGOUT" name="logout"/>
                </form>
                <%
                if(request.getAttribute("deleteMsg")!=null){
                    out.println(request.getAttribute("deleteMsg"));
                }
                %>
            </div>
        </center>
    </body>
</html>
