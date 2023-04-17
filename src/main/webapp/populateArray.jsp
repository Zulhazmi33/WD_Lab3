<%-- 
    Document   : populateArray
    Created on : 28 Mar 2023, 11:57:27 pm
    Author     : Hazmi33
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String salesman[] = {"Salesman 1","Salesman 2","Salesman 3"};
            String month[] = {"Jan","Feb","Mac"};
            int jan[] = {2500,2000,1800};
            int feb[] = {2100,1900,2200};
            int mac[] = {2200,2400,2450};
            
            out.println("<table><tr>");
            out.print("<th>Salesman</th>");
            for(int i=0;i<3;i++)
                out.print("<th>"+month[i]+"</th>");
            
            
            for(int i=0;i<3;i++)
            {
                out.println("</tr><tr>");
                out.print("<td>"+salesman[i]+"</td><td>"+jan[i]+"</td><td>"+feb[i]+"</td><td>"+mac[i]+"</td>"); 
            }    
                
            out.println("</tr></table>");
        %>
        
        
        
    </body>
</html>
