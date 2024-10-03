<%@ taglib uri = "http://www.springframework.org/tags/form" prefix = "form" %>
<%@ taglib uri  = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<h1 style="color: rgb(236, 239, 240); text-align: center;">Product Details</h1>
<head>
    <style>
        table
        {
           width: 100%;
           height: 80px;
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
    </style>
</head>
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
    <th colspan="2">Action</th>
</tr>
    <tr>
        <td>${cids.cid}</td>
        <td>${cids.cname}</td>
        <td>${cids.mobilenumber}</td>
        <td>${cids.pname}</td>
        <td>${cids.price}</td>
        <td>${cids.quantity}</td>
        <td>${cids.total}</td>
        <td>${cids.discount}</td>
        <td>${cids.gst_amt}</td>
        <td>${cids.invoice_bill}</td>
        <td><a href="/editUrl/${cids.cid}">Edit</a></td>
        <td><a href="/deleteUrl/${cids.cid}">Delete</a></td>
    </tr>
</table>