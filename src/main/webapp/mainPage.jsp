<%-- 
    Document   : mainPage
    Created on : 16 Apr 2023, 10:56:03 pm
    Author     : Hazmi33
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="headerPage.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .head 
            {
                border: 0px solid orange; 
                background-color: orange;
                width: 700px; 
                height: 100px;
            }
            .head h1 {text-align: center;}
            .body 
            {
                border: 1px solid black;
                background-color: white;
                width: 700px;
                height: 150px;
            }
            .body p {color: red;}
            .foot
            {
                border: 0px solid orange;
                background-color: orange;
                width:  700px;
                height: 25px;
            }
            .foot p {font-size: 15px; text-align: right;}
        </style>
    </head>
    <body>
        <div class="body">
            <p> 
                Java Server Page(JSP) is a technology for controlling the content <br>
                or appearance of Web pages through the use of servlets, small <br>
                programs that are specified in the Web page and run on the Web server <br>
                to modify the Web Page before it is sent to the user who requested it. <br>
            </p>
        </div>
    </body>
</html>

<%@ include file="footerPage.jsp" %>
