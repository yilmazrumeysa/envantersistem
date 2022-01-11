<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="/resources/css/login.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">

    <title>Login</title>
</head>
<body>


<div class="sidenav">
    <div class="login-main-text">
        <h2 class="text-center title" >Stok/Satış/Fatura</h2>
        <img src="/resources/img/logo3.png" alt="">
    </div>
</div>
<div class="main">
    <div class="col-md-6 col-sm-12">
        <div class="login-form">


            <c:if test="${param.error != null}">
                <p class="text-danger text-center"> Kullanıcı Adı veya Şifre Yanlış .</p>
            </c:if>

            <h4 class="text-center mb-3">Giriş Yap</h4>

            <form:form id="form" method="post" action="/loginUser"  >

                <div class="form-group">
                    <input type="text" name="username" placeholder="Kullanıcı Adı" class="form-control">
                </div>

                <div class="form-group">
                    <input type="password" name="password" placeholder="Şifre" class="form-control" >
                </div>

                <button type="submit" value="submit" class="btn btn-success">Giriş Yap</button>
                <a href="/auth/register" class="btn btn-info">Kayıt Ol</a>

            </form:form>


        </div>
    </div>
</div>


</body>
</html>