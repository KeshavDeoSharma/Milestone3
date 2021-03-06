<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %> 
   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <title>Login Page</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

<link href="./jsp/ipoplanned.css" rel="stylesheet">
</head>
<body>
<div class="container-fluid nav-container">
<div class="row">
 <div class="col-md-2">
  <img src="logo.webp">
 </div>
 <div class="col-md-8">
  <ul class="nav nav-pills nav-justified">
      <li class="nav-item active">
       <a data-toggle="pill" href="/loadImport">Import Data</a>
      </li>
        <li class="dropdown"><a class="dropdown-toggle"
      data-toggle="dropdown" href="#">Manage Company <span class="caret"></span></a>
      <ul class="dropdown-menu">
       <li><a href="/loadCompany">Add Company</a></li>
       <li><a href="/manageCompany">Edit Company</a></li>
       <li><a href="/listCompany">List Company</a></li>
      </ul></li>
      <li class="dropdown"><a class="dropdown-toggle"
      data-toggle="dropdown" href="#">Manage Exchange <span class="caret"></span></a>
      <ul class="dropdown-menu">
       <li><a href="/loadStock">Add Stock Exchange</a></li>
       <li><a href="/listStock">List Stock Exchange</a></li>
      
      </ul></li>
      <li class="dropdown"><a class="dropdown-toggle"
      data-toggle="dropdown" href="#">Manage Ipo <span class="caret"></span></a>
      <ul class="dropdown-menu">
       <li><a href="/loadIpo">Add Ipo</a></li>
       <li><a href="/listIpo">List Ipo</a></li>
      
      </ul></li>
   </ul>
 </div>
<div class="col-md-2">
<button type="submit" class="btn btn-danger btn-md logout" onclick="location.href='Login.html'">Log Out</button>
 </div>
</div>
</div>
    <div class="container">
       <div class="card card-container">
          <header>
           <div class="login-head">
              <h1 class="login-head-content"><i class="fa fa-server"></i>  Add Ipo Details</h1>
           </div>
           </header>
                  <form:form class="form-signin" action="/addIpo" method="POST" modelAttribute="IpoPlanned">
            
               
                 <div class="form-label-group"></div>
       <b>Select Company Id</b><form:select name="companyId" class="form-control" path="companyId">
    <c:forEach items="${companyList}" var="companyList">
        <option value="${companyList.companyId}">${companyList.companyId} : ${companyList.companyname}</option>
    </c:forEach>
</form:select>

      <div class="form-label-group"></div>
        <b>Select Sector Id</b><form:select name="stockId" class="form-control" path="stockExchangeid">
    <c:forEach items="${stockList}" var="stockList">
        <option value="${stockList.stockExchangeid}">${stockList.stockExchangeid} : ${stockList.stockExchangeName}</option>
    </c:forEach>
</form:select>
               <span id="reauth-email" class="reauth-email"></span>
               <div class="form-label-group"></div>
      <b>Enter Price Per Share</b><form:input  class="form-control" type="text" path="pricePerShare" />
      <div class="form-label-group"></div>
      <b>Enter Total Number Of Share</b><form:input  class="form-control" type="text" path="totalNoShares" />
       <div class="form-label-group"></div>
      <b> Open Date Time</b><form:input class="form-control" type="date" path="openDate" />
       <div class="form-label-group"></div>
       <b>Remarks</b><form:input type="text" class="form-control" path="remarks" />
       <div class="form-label-group"></div>
     
               
               <button class="btn btn-lg btn-primary btn-block btn-signin text-uppercase" type="submit">Search</button>
           </form:form>
</body>
</html>