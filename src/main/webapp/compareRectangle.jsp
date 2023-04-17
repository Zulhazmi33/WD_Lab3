<%-- 
    Document   : compareRectangle
    Created on : 17 Apr 2023, 4:01:37 am
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
            String width1, width2, length1, length2;
            double area1 = 0, area2 = 0;
            String statement = "";
            
            width1 = request.getParameter("width1");
            width2 = request.getParameter("width2");
            length1 = request.getParameter("length1");
            length2 = request.getParameter("length2");
            
            try{
                if(width1!=null && width2!=null && length1!=null && length2!=null)
                {
                    area1 = Double.parseDouble(width1) * Double.parseDouble(length1);
                    area2 = Double.parseDouble(width2) * Double.parseDouble(length2);
                }
                if(area1 > area2)
                statement = "Rectangle 1 has bigger area than rectangle 2";
                else if(area1 < area2)
                    statement = "Rectangle 1 has smaller area than rectangle 2";
                else if(area1 == area2)
                    statement = "Rectangle 1 has same area with rectangle 2";
                if(area1==0 && area2==0)
                    statement = "";
                    
            }catch(NumberFormatException e){
                statement = "You have to input data in all 4 box";
            }
        %>
        
        <h1>Compare width/length of 2 rectangle(cm)</h1>
        
        <form>
            <h4> Rectangle 1 </h4>
            <label for="rect1a"> Width </label>
            <input type="text" name="width1">
            <label for="rect1b"> Length </label>
            <input type="text" name="length1"><br>
            
             <h4> Rectangle 2 </h4>
             <label for="rect2a"> Width </label>
            <input type="text" name="width2">
            <label for="rect2b"> Length </label>
            <input type="text" name="length2"><br><br>
            
            <input type="submit" value="Submit">
            <input type="reset" value="Reset"><br><br>
        </form>
     
        <textarea rows="8" cols="75"> 
            Area 1 = <%=area1%>
            Area 2 = <%=area2%>
            
            <%=statement%> 
        </textarea>
    </body>
</html>
