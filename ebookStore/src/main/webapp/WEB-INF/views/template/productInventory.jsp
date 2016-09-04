<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%@ include file="/WEB-INF/views/template/header.jsp" %>






<html>








<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Urun Stok Sayfası</h1>

            <p class="lead">Checkout</p>
        </div>
        <table class="table table-striped table-hover">
            <thead>
            <tr class="bg-success">
                <th>Photo Thumb</th>
                <th>Product Name</th>
                <th>Category</th>
                <th>Condition</th>
                <th>Price</th>
                <th></th>
            </tr>
            </thead>

            <c:forEach items="${products}" var="product">
                <tr>

                    <td><img src="#" alt="image"/> </td>
                    <td>${product.productName}</td>
                    <td>${product.productCategory}</td>
                    <td>${product.productCondition}</td>
                    <td>${product.productPrice}TL</td>
                    <td><a href="<spring:url value="/productList/viewProduct/${product.productID}"/>"> <span class="glyphicon glyphicon-info-sign"></span></a></td>



                </tr>
            </c:forEach>




        </table>







        <%@ include file="/WEB-INF/views/template/footer.jsp"%>
