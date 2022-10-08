<%--
  Created by IntelliJ IDEA.
  User: Jason
  Date: 6/22/2015
  Time: 8:47 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Polls Webpage</title>
</head>
<body>
  <h1>Legislative Polls Web Page Login form</h1>
  <p>
    Stat tuned for Latest Poll from NDTV.
	</p>
	<h3> Login here </h3>
<form action="user_login" method="post">
<table style="width: 20%">
                 <tr>
                 <td>UserName</td>
                                    <td><input type="text" name="username" /></td>
                         </tr>
                                    <tr>
                                    <td>Password</td>
                                    <td><input type="password" name="password" /></td>
                           </tr>
                 </table>
                 <input type="submit" value="Login" /></form>
  
</body>
</html>
