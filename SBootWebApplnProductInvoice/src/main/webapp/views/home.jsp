<%@ taglib uri = "http://www.springframework.org/tags/form" prefix = "form" %>
<%@ taglib uri  = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>homePage</title>
    <style>
        body{
            margin: 0;
            padding: 0;
        }
        .main
        {
           border: 1px solid;
           height: 700px;
           margin: auto;
           padding: 30px;
           text-align: center;
           background-image: url(./img/bgProduct.jfif);
           background-position: center;
           background-size: cover;
        }
        a{
            text-decoration: none;
            color: rgb(61, 9, 46);
            font-size: large;
            padding-top: 10px;
        }
        .link{
            border: 1px solid;
            display: flex;
            justify-content: space-evenly;
            background-color: rgb(112, 176, 233);
            height:40px;
            margin-top: 50px;
        }
        a:hover
        {
            background-color: aquamarine;
            border-radius: 10px;
            padding: 10px;
            color: rgb(42, 133, 218);
        }
        .image
        {
            margin-top: 60px;
        }
    </style>
</head>
<body>
     <div class="main">
        <h1 style="color: rgb(107, 6, 62);">PRODUCT INVOICE APPLICATION</h1>
        <div class="link">
            <a href="/addproductUrl">AddProduct</a>
            <a href="/viewOne">ViewOneProduct</a>
            <a href="/edit">EditProduct</a>
            <a href="/viewAllUrl">ViewAllProduct</a>
        </div>
        <div class="image">
            <img src="./img/bg1pro.jfif" alt="error" height="400px" width="700px">
        </div>   
     </div>
</body>
</html>