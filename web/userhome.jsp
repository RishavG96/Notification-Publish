<%-- 
    Document   : userhome
    Created on : Jul 18, 2017, 9:11:39 AM
    Author     : mahe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Page</title>
    </head>
    <%
        if(session.getAttribute("u")==null)
        {
            session.setAttribute("errorMsg", "Your session has expired, please login to continue");
            response.sendRedirect("index.jsp");
        }
        else if(session.getAttribute("role").equals("admin"))
        {
            response.sendRedirect("adminhome.jsp");
        }
        %>
    <body>
        <center>
            <div style="background: #ca4335; width:500px; margin-top: 200px; border-radius: 10px; box-shadow: 2px 2px 2px black">
                <h1>Welcome user <%out.print(session.getAttribute("uname"));%></h1>
                Current Notice:
                <%
                ServletContext sc=request.getServletContext();
                if(sc.getAttribute("notice")!=null)
                    out.println(sc.getAttribute("notice"));
                else
                    out.println("No notice");
                %>
                
                <br><form action="Logout" method="post">
                    <input type="submit" value="LOGOUT" name="logout"/>
                </form>
            </div>
        </center>
    </body>
</html>
