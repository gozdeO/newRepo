<jsp:useBean id="product" scope="request" type="com.eboookstore.model.Product"/>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ include file="/WEB-INF/views/template/header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>







<html>








<div class="container-wrapper">
    <div class="container">
        <div class="page-header">
            <h1>Ürün Detay Sayfası</h1>

            <p class="lead">Checkout</p>
        </div>

      <div class="container">
          <div class="row"></div>
          <div class="col-md-5">
              <img src="#" alt="image" style="width:100%; height:300px"/>
          </div>
          <div class="col-md-5">

              <h3>${product.productName}</h3>
              <p>${product.productDescription}</p>
              <p>
                  <strong>Category</strong>
              ${product.productCategory}</p>
              <p>
                  <strong>Condition</strong>
              ${product.productCondition}</p>
              <p>

              ${product.productPrice} TL</p>
          </div>
      </div>





        <%@ include file="/WEB-INF/views/template/footer.jsp"%>
