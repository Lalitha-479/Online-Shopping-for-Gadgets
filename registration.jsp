<%@page import="DataBase.DB"%>
<%@page import="java.sql.ResultSet"%>
<%@include file="template/top.jsp" %>
<%@include file="template/menu_public.jsp" %>
<%@include file="template/body_start.jsp" %>

<h2 class="title"><a href="#">Register </a></h2>
<div class="entry">
    <form action="dbregister.jsp" onsubmit="return check()">
        <table>
            <tr>
                <td>User Name</td>
                <td><input type="text" required="" name="uname" id="uname" /></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="password" required="" name="upass" id="upass" /></td>
            </tr>
            <tr>
                <td>Login Name</td>
                <td><input type="text" required="" name="lname" id="lname" /></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><input type="email" name="emailid" id="emailid" /></td>
            </tr>
            <tr>
                <td>Mobile No.</td>
                <td><input type="text" name="mobno" id="mobno" /></td>
            </tr>
            <tr>
                <td><button class="button" type="submit">Register</button></td>
            </tr>
        </table>
    </form>
</div>

<script type="text/javascript">
    <% if (request.getParameter("reg") != null && request.getParameter("reg").contentEquals("failed")) { %>
    alert("Registration Failed !!!");
    <% } %>
    <% if (request.getParameter("reg") != null && request.getParameter("reg").contentEquals("success")) { %>
    alert("Registration Completed")
    <% } %>
</script>

<%@include file="template/body_end.jsp" %>
