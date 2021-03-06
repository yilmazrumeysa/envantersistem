<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>



<jsp:include page="partial/topbar.jsp">
    <jsp:param name="title"  value="Add Product" />
</jsp:include>


<jsp:include page="partial/headClose.jsp">
    <jsp:param name="title" value="myCart" />
</jsp:include>

<style>

    .error {color: #ff0f49;list-style-type: circle}

</style>


<form:form class="form mx-auto w-50 mt-5" role="form" autocomplete="off" action="/product/createProductPost"
           modelAttribute="product" method="post" >

    <h5>Add Product</h5>
    <a class="float-right" href="/product/products">Ürünlere Dön</a>


    <div class="form-group mt-3">
        <label> Ürün İsmi:</label>
        <form:input path="name" type="text" class="form-control" placeholder="İsim"/>
        <form:errors path="name" cssClass="error" />
    </div>
    <div class="form-group">
        <label> Marka:</label>
        <form:input path="brand" type="text" class="form-control"  placeholder="Marka" required=""/>
        <form:errors path="brand" cssClass="error" />
    </div>
    <div class="form-group">
        <label> Ürün Kodu :</label>
        <form:input path="code" type="text" class="form-control"  placeholder="Code" required=""/>
        <form:errors path="code" cssClass="error" />
    </div>

    <div class="form-group">
        <label> Ürün Fotoğrafı :</label>
        <form:input path="photoUrl" type="text" class="form-control"  placeholder="Fotograf" required=""/>
        <form:errors path="photoUrl" cssClass="error" />
    </div>

    <div class="form-group">
        <label> Açıklama :</label>
        <form:input path="description" type="text" class="form-control"  placeholder="Açıklama" required=""/>
        <form:errors path="description" cssClass="error" />
    </div>

    <div class="form-group">
        <label> Fiyatı :</label>
        <form:input  path="price" type="text" class="form-control"  placeholder="Fiyatı" required=""/>
        <form:errors path="price" cssClass="error" />
    </div>

    <div class="form-group">
        <button type="submit" class="btn btn-success btn-sm float-right">Ürün Ekle</button>
    </div>
</form:form>


<jsp:include page="partial/footer.jsp">
    <jsp:param name="title" value="Main title" />
</jsp:include>

