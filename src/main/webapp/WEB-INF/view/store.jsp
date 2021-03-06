<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
    <link rel="stylesheet" href="/resources/css/dashbord.css">
    <link rel="stylesheet" href="/resources/css/store.css">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.11.2/css/all.css" rel="stylesheet" type="text/css" />
    <title>Store</title>
</head>
<body>

<nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0">
    <a class="navbar-brand col-sm-3 col-md-2 mr-0 text-center lead" href="#">Stok/Satış/Fatura</a>

    <form>
        <input class="form-control form-control-dark w-100"
               type="text" name="q" id="keyword" size="500" value="${q}" placeholder="Arama">
    </form>

    <ul class="navbar-nav px-3">
        <li class="nav-item text-nowrap">
            <a class="nav-link lead" href="/logout">Çıkış</a>
        </li>
    </ul>
</nav>


<div class="container-fluid">
    <div class="row">


        <jsp:include page="partial/sidebar.jsp">
            <jsp:param name="title" value="Main title" />
        </jsp:include>


        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
            <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
                <h1 class="lead">Mağaza

                    <c:if test="${!empty products}">
                        <c:if test="${q.trim().length() > 0}">
                        <br><br><b>Arama Sonuçları :</b> ' ${q} '
                         </c:if>
                    </c:if>
                </h1>
            </div>


            <div class="row">


                <c:forEach items="${products}" var="product">

                    <div class="col-md-3">
                        <figure class="card card-product">
                            <div class="img-wrap mb-2">
                                <img src="/resources/img/${product.photoUrl}">
                            </div>
                            <figcaption class="info-wrap">
                                <h6 class="title text-dots">${product.brand} ${product.name}</h6>
                                <p>${product.description}</p>
                                <div class="action-wrap">
                                    <a href="/user/addBasket/${product.id}" class="btn btn-basket btn-sm float-right">
                                        <span data-feather="shopping-cart"></span> Sepete Ekle
                                    </a>
                                    <div class="price-wrap h5">
                                        <span class="price-new">${product.price} &#x20BA;</span>
                                    </div>
                                </div>
                            </figcaption>
                        </figure>
                    </div>
                </c:forEach>

                <c:if test="${empty products}">
                       <div class="container">
                           <h2 class="text-center">
                               <i class="fas fa-exclamation-triangle text-warning"></i>
                               Sonuç Yok " ${q} "
                               <i class="fas fa-exclamation-triangle text-warning"></i>
                           </h2 >
                       </div>
                </c:if>


                </div>
        </main>
    </div>
</div>



<jsp:include page="partial/footer.jsp">
    <jsp:param name="title" value="Main title" />
</jsp:include>

