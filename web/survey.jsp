]<%-- 
    Christopher Jackson
    CS4010 HW3
    10/15/17
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="core" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Thank You Page</title>
        <!-- Reference to the external stylesheet main.css -->
        <link rel="stylesheet" href="styles/main.css">
    </head>
    <body>
        <h1>Thanks for taking our survey!</h1>
        <p>Here is the information that you entered:</p>
        
        <!-- This is where I output the information that the user entered using the user object from the servlet -->
        <label class="pad_top">Email:</label>
        ${user.email} <br>
        <label class="pad_top">First Name:</label>
        ${user.firstName} <br>
        <label class="pad_top">Last Name:</label>
        ${user.lastName} <br>
        <label class="pad_top">Heard From:</label>
        ${user.heardFrom} <br>
        <label class="pad_top">Updates:</label>
        ${user.wantsUpdates} <br>
        <!-- JSTL if tag for the user choice of receiving updates or not. -->
        <core:if test="${user.wantsUpdates == 'Yes'}">
            <label class="pad_top">Contact Via:</label>
            ${user.contactVia} <br>
        </core:if>
    </body>
</html>
