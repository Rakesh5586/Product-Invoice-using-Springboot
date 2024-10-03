<!DOCTYPE html>
<html lang="en">
<head>
    <title>ViewOneProduct</title>
    <style>
        div{
            border: 1px solid;
            width:fit-content;
            margin: auto;
            padding: 20px;
            text-align: center;
            margin-top: 60px;
            background-color: aqua;
        }
        label{
            font-size: x-large;
            width: 230px;
            display: inline-block;
        }
        input
        {
            height: 30px;
            font-size: large;

        }
        body{
            background-color: aquamarine;
        }
    </style>
</head>
<body>
    <div>
        <form action="/editUrlMain" method="Get">
            <label>Enter Customer Id:</label>
            <input type = "text" name="cid"><p></p>
            <input type = "submit" value="Show">
        </form>
    </div>
</body>
</html>