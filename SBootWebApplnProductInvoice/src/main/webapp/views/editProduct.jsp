<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<html>
<head>
<title>Spring MVC form tags</title>
<style>
     body{
            margin: 0;
            padding: 0;
            background-color: rgb(247, 182, 104);
        }
        .main
        {
            margin: auto;
            width: 400px;
            height: 420px;
            padding: 20px;
            margin-top: 60px;
            text-align: center;
            background-color: rgb(228, 146, 46);
            border-radius: 15px;
        }
        input{
            margin: 10px;
            height: 30px;
            border-radius: 10px;
        }
        .sub{
             font-size: large;
             width: 200px;
             height: 25px;
             width: 50%;
        }
        .sub:hover
        {
            background-color: green;
        }
        table tr td{
            font-size: x-large;
            text-align: center;
        }
</style>
</head>
 
<body>
    <div class="main">
    <h2>Edit Product Here</h2>
 
    <form:form action="/editsaveUrl" method = "GET" class="frm">
        <table>
            <tr>
                <td>Customer Id:</td>
                <td><form:input path="cid" /></td>
            </tr>
            <tr>
                <td>Customer Name:</td>
                <td><form:input path="cname" /></td>
            </tr>
            <tr>
                <td>Mobile Number:</td>
                <td><form:input path="mobilenumber" /></td>
            </tr>
            <tr>
                <td>Product name:</td>
                <td><form:input path="pname" /></td>
            </tr>
            <tr>
                <td>Price:</td>
                <td><form:input path="price" /></td>
            </tr>
            <tr>
                <td>Quantity:</td>
                <td><form:input path="quantity" /></td>
            </tr>
            <tr>
                <td></td>
                <td><input type = "submit" value = "EditSave" class="sub"></td>
            </tr>
        </table>
    </form:form>
</div>
</body>
</html>