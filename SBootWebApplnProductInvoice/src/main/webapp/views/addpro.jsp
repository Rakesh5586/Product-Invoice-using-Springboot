<!DOCTYPE html>
<html lang="en">
<head>
    <title>AddNewProduct</title>
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
        label{
            display: inline-block;
            width: 180px;
            font-size: large;
        }
        input{
            margin: 10px;
            height: 20px;
            border-radius: 15px;
        }
        .sub{
             font-size: large;
             width: 200px;
             height: 25px;
        }
        .sub:hover
        {
            background-color: green;
        }
        
    </style>
</head>
<body>
     <div class="main">
            <h1>Add New Product</h1>
            <form action  = "/saveUrl" method  ="POST">
                <label>Constomer Name:</label>
                <input type ="text" name ="cname"><p></p>
                <label>Mobile Number:</label>
                <input type ="text" name ="mobilenumber"><p></p>
                <label>Product Name:</label>
                <input type ="text" name ="pname"><p></p>
                <label>Price:</label>
                <input type ="text" name ="price"><p></p>
                <label>Quantity:</label>
                <input type ="text" name ="quantity"><p></p>
                <input type ="submit" value="Add Product" class="sub">
            </form>
      </div>
</body>
</html>