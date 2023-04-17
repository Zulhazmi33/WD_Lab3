<%-- 
    Document   : tempConverter
    Created on : 17 Apr 2023, 12:15:39 am
    Author     : Hazmi33
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Temperature Page</title>
        

    </head>
    <body>
        <%
            String converted = null;
            double farenheit = 0;
            
            if(request.getParameter("converter") != null)
            {
                converted = request.getParameter("converter");
                farenheit = ((9f/5f) * Double.parseDouble(converted)) + 32;
            }
        %>
        
        <h1> Temperature converter </h1>
        
        <h4> Enter temperature in Celsius </h4>
        <form>
            <label for="convert"> Input temperature : </label>
            <input type="text" name="converter">
            <input type="submit" value="Convert">
        </form>
        
        <p> Farenheit = <%=farenheit%> </p>
    </body>
</html>
