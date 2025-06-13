<%-- 
    Document   : start
    Created on : Jun 13, 2025, 4:43:55 PM
    Author     : hp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Start Page</title>
    </head>
    <body>
        <h1>Start</h1>
        <%
            String playerName = pageContext.getServletContext().getInitParameter("player_name");
            String computerName = pageContext.getServletContext().getInitParameter("computer_name");
        %>
        <p>
            Hi <b><%=playerName%></b>. My name is <b><%=computerName%></b>, your play mate.
            let's start the game.     
        </p>
        <form action="RockPaperScissorServlet.do" method="POST">
            <table border="0">
                    <tr>
                        <td>Make a choice:</td>
                        <td>
                            <select name="choice" required="">
                                <option value="R">Rock</option>
                                <option value="P">Paper</option>
                                <option value="S">Scissor</option>
                            </select>
                        </td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="PLAY"/></td>
                    </tr>
            </table>
        </form>
    </body>
</html>
