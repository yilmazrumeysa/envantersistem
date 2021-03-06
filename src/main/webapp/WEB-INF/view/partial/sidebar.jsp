<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>



<sec:authentication property="principal.authorities" var="authorities" />
<c:forEach items="${authorities}" var="authority" varStatus="vs">
    <c:set var="role" value="${authority.authority}"/>
</c:forEach>



<c:if test="${role eq 'ADMIN'}">
    <nav class="col-md-2 d-none d-md-block bg-light sidebar">
        <div class="sidebar-sticky">
            <ul class="nav flex-column">

                <h5 class="text-center"><i class="fas fa-user"></i> <sec:authentication property="principal.username"/></h5>

                <li class="nav-item">
                    <a class="nav-link" href="/admin/adminHome">
                        <span data-feather="home"></span>
                        Anasayfa
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/">
                        <span data-feather="shopping-bag"></span>
                        Mağaza
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/product/products">
                        <span data-feather="layers"></span>
                        Stok
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/user/customers">
                        <span data-feather="users"></span>
                        Müşteriler
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/bill/bills">
                        <span data-feather="bar-chart-2"></span>
                        Faturalar
                    </a>
                </li>

            </ul>


        </div>
    </nav>

</c:if>

<c:if test="${role eq 'USER'}">
<nav class="col-md-2 d-none d-md-block bg-light sidebar">
    <div class="sidebar-sticky">
        <ul class="nav flex-column">

            <h5 class="text-center"><i class="fas fa-user"></i> <sec:authentication property="principal.username"/></h5>

            <li class="nav-item">
                <a class="nav-link" href="/">
                    <span data-feather="home"></span>
                    Anasayfa
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/user/orderList/">
                    <span data-feather="shopping-bag"></span>
                    Siparişler
                </a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/user/myBasket/">
                    <span data-feather="shopping-cart"></span>
                    Sepet
                </a>
            </li>

        </ul>

    </div>
</nav>
</c:if>



