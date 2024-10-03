<%@ taglib uri = "http://www.springframework.org/tags/form" prefix = "form" %>
<%@ taglib uri  = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<head>
    <style>
        table
        {
           width: 100%;
           height: 280px;
           border-collapse: collapse;
           background-color: aqua;
           margin-top: 20px;
           padding: 20px;
           text-align: center;
        }
        a{
            text-decoration: none;
            font-size: x-large;
            color: red;
        }
        a:hover
        {
            background-color: blue;
        }
        body{
            background-color: rgb(7, 88, 88);
        }
        th{
            color: rgb(228, 28, 218);
        }
    </style>
</head>
<h1 style="color: white; text-align: center;">All Products Details</h1>
<table border="1">
<tr>
    <th>CUSTOMER ID</th>
    <th>CUSTOMER NAME</th>
    <th>MOBILE NUMBER</th>
    <th>PRODUCT NAME</th>
    <th>PRICE</th>
    <th>QUANTITY</th>
    <th>TOTAL</th>
    <th>DISCOUNT</th>
    <th>GST</th>
    <th>INVICE_BILL</th>
    <th colspan="2">ACTION</th>
</tr>
<c:forEach var = "product" items = "${products}">
    <tr>
        <td>${product.cid}</td>
        <td>${product.cname}</td>
        <td>${product.mobilenumber}</td>
        <td>${product.pname}</td>
        <td>${product.price}</td>
        <td>${product.quantity}</td>
        <td>${product.total}</td>
        <td>${product.discount}</td>
        <td>${product.gst_amt}</td>
        <td>${product.invoice_bill}</td>
        <td><a href="/editUrl/${product.cid}">Edit</a></td>
        <td><a href="/deleteUrl/${product.cid}">Delete</a></td>
    </tr>
</c:forEach>
</table>