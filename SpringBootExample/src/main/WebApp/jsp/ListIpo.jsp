<%@ page language="java" contentType="text/html; charset=UTF-8"
 import="java.util.*,com.keshav.SpringBootExample.model.IpoPlanned"    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <meta charset="UTF-8">
    <title>Stock Exchange List  Page</title>
 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

<link href="./jsp/table.css" rel="stylesheet">
</head>
<body>
<%
List IpoList=(List)request.getAttribute("ListIpo");

%>
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
    <h1 class="login-head-content">
     <i class="fa fa-user"></i> Stock List
    </h1>
   </div>
  </header>
<div class="card card-container1">
  <table>
   <thead>
    <tr>
     <th>Company Id</th>
     <th>Stock Exchange  Id</th>
     <th>Price per Share</th>
     <th>Total No of Shares</th>
     <th>Open Date</th>
  <th>Remarks</th>   
  
    </tr>
   </thead>
   <tbody id="myTable">

<% for(int i=0;i<IpoList.size();i++){
	IpoPlanned e=(IpoPlanned)IpoList.get(i);
	%>
<tr>
<td><%= e.getCompanyId() %></td>
<td><%= e.getStockExchangeid() %></td>
<td><%= e.getPricePerShare() %></td>
<td><%= e.getTotalNoShares() %></td>
<td><%= e.getOpenDate() %></td>
<td><%= e.getRemarks() %></td>
</tr>
<% }%>

  </tbody>
  </table>
  </div>
  </div>
  </div>
 
  
</body>
      

</html>