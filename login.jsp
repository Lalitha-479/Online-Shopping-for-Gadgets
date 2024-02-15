<%@include file="template/top.jsp" %>
<%@include file="template/menu_public.jsp" %>
<%@include file="template/body_start.jsp" %>

<form id="form" action="loginbaseselect.jsp">
    <table>
        <tr>
            <td><input type="text" name="uname" id="uname" placeholder="username" required=""/></td>
        </tr>
        <tr>
            <td><input type="password" name="upass" id="upass" placeholder="password" required=""/></td>
        </tr>
        <tr>
            <td><button class="button" type="submit" id="search-submit">Login</button></td>
            <td><div id="result"></div></td>
        </tr>
    </table>
</form>

<script type="text/javascript">
    <% if (request.getParameter("login") != null && request.getParameter("login").contentEquals("disabled")) { %>

    alert("Login Failed !!!");
    <% } %>
    <% if (request.getParameter("login") != null && request.getParameter("login").contentEquals("disabled")) { %>
    alert("User Blocked !!!");
    <% } %>
    <% if (request.getParameter("login") != null && request.getParameter("login").contentEquals("unknown")) { %>
    alert("Unknown user !!!");
    <% } %>
</script>



<%@ include file="template/body_end.jsp" %>
