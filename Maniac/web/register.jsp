<%-- 
    Document   : register
    Created on : Mar 18, 2025, 1:04:47 PM
    Author     : Admin
--%>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="css/login.css">
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register page</title>
    </head>
    <body>
    <body>        
        <div class="form_login" width="auto" height="250px">
            <form action="register" method="POST"> 
                <table border="0">
                    <div class="title">Sign Up</div>
                    <tbody>                    
                        <tr>
                            <td>Username:</td>
                            <td><input type="text" name="username" required /></td>
                        </tr>
                        <tr>
                            <td>Password:</td>
                            <td><input type="password" name="password" required /></td>
                        </tr>
                        <tr>
                            <td>Email: </td>
                            <td><input type="text" name="email" required /></td>
                        </tr>
                        <tr>
                            <td>Repeat password:</td>
                            <td><input type="password" name="rpassword" required /></td>
                        </tr>
                        <tr>
                            <td><input type="submit" value="Sign Up" /></td>
                            <td>${mess}</td>
                        </tr> 
                    </tbody>
                    ${error}
                </table>  
            </form>
        </div>
        <style>
            .form_login {
                width: 30%;
                height: 60%;
                background-color: rgba(128, 128, 128, 0.5);/* Màu nền để dễ nhìn */
                display: flex;
                justify-content: center; /* Căn giữa theo chiều ngang */
                align-items: center;
                border-radius: 10px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }
            .form_login form {
                font-size: 3.2em;
                width: 80%;  /* Form rộng 80% so với div cha */
                height: 90%; /* Form cao 90% so với div cha */
            }

            .form_login form .title{
                padding-top: 50px;
            }

            .form_login form table{
                padding-top: 70px;
            }

            .form_login form td{
                font-size: 2em;
                width: 100%;
                height: 90%; /* Form cao 90% so với div cha */
            }

            .form_login form input{
                font-size: 0.7em;
            }

            .form_login form .ask_for_regis{
                display: flex;
                justify-content: center;
                align-content: center;
                font-size: 0.5em;
            }
        </style>
    </body>
</form>
</body>
</html>
