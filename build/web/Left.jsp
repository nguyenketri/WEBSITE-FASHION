

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="col-sm-3">
    <div class="card bg-light mb-3">
        <div class="card-header bg-primary text-white text-uppercase"><i class="fa fa-list"></i> Categories</div>
        <ul class="list-group category_block">
           
                <c:forEach items="${listC}" var="o">
           <li class="list-group-item text-white ${tag == o.cID ? 'active' : ''}">
                 <a href="category?cID=${o.cID}" class="${tag == o.cID ? 'text-white' : ''}">${o.cName}</a>
            </li>
              </c:forEach>

        </ul>
    </div>
    <c:set var="p" value="${pLast}"></c:set>
    <div class="card bg-light mb-3">
        <div class="card-header bg-success text-white text-uppercase">Last product</div>
        <div class="card-body">
            <img class="img-fluid" src="${p.image}" />
            <h5 class="card-title">${p.name}</h5>
            <p class="card-text">${p.description})</p>
            <p class="bloc_left_price">${p.price} $</p>
        </div>
    </div>
</div>