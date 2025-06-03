<%-- 
    Document   : left
    Created on : Mar 26, 2025, 4:49:45 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
                    <div class="col-sm-2">
                        <div class="card bg-light mb-3">
                            <div class="card-header bg-primary text-white text-uppercase"><i
                                    class="fa fa-list"></i> Categories</div>
                            <ul class="list-group category_block">
                                <c:forEach items="${categories}" var="o">
                                <li class="list-group-item text-white ${tag == o.categoryID ? "active" : ""}"><a
                                        href="category?categoryID=${o.categoryID}">${o.categoryName}</a>
                                </li>
                            </c:forEach>

                        </ul>
                    </div>
                    <div class="card bg-light mb-3">
                        <div class="card-header bg-success text-white text-uppercase">Lastest product</div>
                        <div class="card-body">
                            <img class="img-fluid" src="${p.image}" />
                            <h5 class="card-title">${p.productName}</h5>
                            <p class="card-text">${p.description}</p>
                            <p class="bloc_left_price">${p.price}đ</p>
                        </div>
                    </div>
                </div>
