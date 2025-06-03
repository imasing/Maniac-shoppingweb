<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--begin of menu-->
                    <div class="header">
                        <nav class="navbar navbar-expand-md navbar-light" style="background-color: #F6B145;">
                            <div class="container">
                                <a class="navbar-brand" href="home">Duck<b>IT</b></a>
                                <a class="logo"><img src="css/pictures/logoManiac.jpg" alt="Maniac Logo" width="60px" height="auto"/></a>
                                <button class="navbar-toggler" type="button" data-toggle="collapse"
                                    data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault"
                                    aria-expanded="false" aria-label="Toggle navigation">
                                    <span class="navbar-toggler-icon"></span>
                                </button>

                                <div class="collapse navbar-collapse justify-content-end" id="navbarsExampleDefault">
                                    <ul class="navbar-nav m-auto">
                                        <c:if test="${sessionScope.user.roleID == 1}">
                                            <li class="nav-item">
                                                <a class="nav-link" href="#">Manage Account</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="manager">Manage Product</a>
                                            </li>
                                        </c:if>
                                       
                                        <li class="nav-item">
                                            <a class="nav-link" href="account?userID=${sessionScope.user.userID}">Hello ${sessionScope.user.fullName}</a>
                                        </li>
                                        <c:if test="${sessionScope.user != null}">
                                            <li class="nav-item">
                                                <a class="nav-link" href="logout">Logout</a>
                                            </li>
                                        </c:if>
                                        <c:if test="${sessionScope.user == null}">
                                            <li class="nav-item">
                                                <a class="nav-link" href="login.jsp">Login</a>
                                            </li> 
                                        </c:if>              
                                    </ul>
                                    <form action="search" method="post" class="form-inline my-2 my-lg-0">
                                        <div class="input-group input-group-sm">
                                                <input name="txt" type="text" value="${txtSearch}" class="form-control" aria-label="Small"
                                                aria-describedby="inputGroup-sizing-sm" placeholder="Search...">
                                                <div class="input-group-append">
                                                    <button type="submit" class="btn btn-secondary btn-number">
                                                    <i class="fa fa-search"></i>
                                                    </button>
                                                </div>
                                        </div>
                                        <a class="btn btn-success btn-sm ml-3" href="show?userID=${sessionScope.user.userID}">
                                            <i class="fa fa-shopping-cart">Cart</i> 
                                        </a>
                                    </form>
                                </div>
                            </div>
                        </nav>
                    </div>
<style>
    .header form input.form-control{
            width: 250px;
            border: 2px solid black;
            border-radius: 15px;
    }
    
    .header .container{
    width: 100%;    
    }
    
    .header .navbar-brand{
        font-size: 35px;
    }
    

</style>
                    <section class="jumbotron text-center">
                        <div class="container">
                            <h1 class="jumbotron-heading">Welcome to Duck<b>IT</b> Store!</h1>
                            <p class="lead text-muted mb-0">"When life goes sucks, give it a Duck"</p>
                        </div>
                    </section>
                    <!--end of menu-->