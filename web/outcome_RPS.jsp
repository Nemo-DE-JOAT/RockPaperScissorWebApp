<%-- 
    Document   : outcome
    Created on : Jun 13, 2025, 5:46:32 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rock Paper Scissor outcome Page</title>
    </head>
    <body>
        <h1>Rock paper scissor outcome</h1>
        <%
            String playerName = pageContext.getServletContext().getInitParameter("player_name");
            String computerName = pageContext.getServletContext().getInitParameter("computer_name");
            Character playerChoice = (Character)request.getAttribute("playerChoice");
            Character computerChoice = (Character)request.getAttribute("computerChoice");
            String outcomeC = (String)request.getAttribute("outcome");
        %>
        <p>
            Below is the game outcome:
        </p>
        <table border="0">
                <tr>
                    <td><b><%=playerName%></b>: </td>
                    <td><%=playerChoice%></td>
                </tr>
                <tr>
                    <td><b><%=computerName%></b>: </td>
                    <td><%=computerChoice%></td>
                </tr>
                <tr>
                    <td><b>Outcome</b>: </td>
                    <td><%=outcomeC%></td>
                </tr>
        </table>
                <p>
                    Please click <a href="index.html">here</a> to go back to the main page or
                    <a href="start.jsp">here</a> to continue playing.
                </p>
    </body>
</html>
