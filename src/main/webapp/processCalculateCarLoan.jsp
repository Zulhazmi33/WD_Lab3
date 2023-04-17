<%-- 
    Document   : processCalculateCarLoan
    Created on : 11 Apr 2023, 3:14:17 pm
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
        <h1> Perform Car Loan Calculation </h1>
        
        <%
            double loan = 0;
            int period = 0;
            double totalLoan = 0;
            
            loan = Double.parseDouble(request.getParameter("loan"));
            period = Integer.parseInt(request.getParameter("period"));
            
            switch(period)
            {
                case 3 : case 4 : totalLoan = loan + (loan * period * 0.028); break;
                case 5 : case 7 : totalLoan = loan + (loan * period * 0.045); break;
            }
        %>
        
        <fieldset>
            <h1 style="color: blue"> Details of car loan: </h1>
            
            <h3> Loan Request : <%=loan%> </h3>
            <h3> Period of payment : <%=period%></h3>
            <h3> Total Loan (+interest) : <%=totalLoan%> </h3>
        </fieldset>
    </body>
</html>
