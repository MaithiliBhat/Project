<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insert</title>
    <style>
        body{
    background-color: black;
    /* width: 10em; */
    background-image:url(../image/prbg1.jpg);
    overflow: hidden;
 
}
h1{
    position: relative;
    left: 14em;
    text-decoration: underline;
}
h2{
    text-align: center;
}
.main{
     width: 70em;
     position: relative;
     left: 5em;
}
 nav{

    /* width: 100%; */
    background-color: white;
    
} 
.container{
    display: flex;
    column-gap: 3em;
    position: relative;
    left: 3em;
    top: 1em;
    /* background-color: white; */
    width: 50em;
    height: 3em;


}

form{
    border: solid white;
    background-color:rgb(193, 230, 230);
    /* width: 78em; */
}
table{
    position: relative;
    left: 10em;
    top: -1em;
    font-size: 1em;

}
.td2{
    width: 55em;
    height: 1.6em;
}
.td1{
    text-align: right;
    position: relative;
    left:-2em ;
}

    </style>
</head>
<body>
 <h1 id="successMessage" style="color:green">${pass}</h1>
<h1 id="failMessage" style="color:red">${fail}</h1>

<script>
    // Get the success and fail message elements
    var successMessage = document.getElementById("successMessage");
    var failMessage = document.getElementById("failMessage");

    // Check if the success message exists and display it as a pop-up alert
    if (successMessage.innerText !== "") {
        window.alert(successMessage.innerText);
        successMessage.style.display = "none"; // Hide the success message element
    }

    // Check if the fail message exists and display it as a pop-up alert
    if (failMessage.innerText !== "") {
        window.alert(failMessage.innerText);
        failMessage.style.display = "none"; // Hide the fail message element
    }
</script>


    <h1 style="color: white;">INSERT PRODUCT</h1>
    <div class="main">
    <nav>
       <div class="container">
        <div><a href="/admin/home" " style="text-decoration: none;font-size: 20px;color: black;">Home</a></div>
        
      </div>
    </nav>
    <hr>

    <form action="/admin/insert" method="post" enctype="multipart/form-data">
        <h2 >Insert Product Details</h2>
        <table cellpadding="" cellspacing="10em">
            <tr>
                <td class="td1"><label for="cat"><strong> Category</strong></label></td>
                <td><input type="text" name="category" id="cat" placeholder="category" class="td2"></td>
            </tr>
            <tr>
                <td class="td1" ><label for="sub"><strong>Subcategory</strong></label></td>
                <td><input type="text" name="subcategory" id="sub" placeholder="subcategory"  class="td2"></td>
            </tr>
            <tr>
                <td class="td1" ><label for="fname"><strong>Name</stong></label></td>
                <td><input type="text" name="name" id="fname" placeholder="Full name"  class="td2"></td>
            </tr>
            <tr>
                <td class="td1" ><label for="brand"><strong>Brand</strong></label></td>
                <td><input type="text" name="brand" id="brand" placeholder="brand"  class="td2"></td>
            </tr>
            <tr>
                <td class="td1"  ><label for="price"><Strong>Price</Strong></label></td>
                <td><input type="number" name="price" id="price" placeholder="price"  class="td2"></td>
            </tr>
            <tr>
                <td class="td1" ><label for="img"><strong>Image</strong></label></td>
                <td ><input type="file" name="pic" src="" class="td2" id="img" style="border: 1px solid; background-color: white;"></td>
            </tr>
            
            <tr>
                <td class="td1" ><label for="size"><strong>Quantity</strong></label></td>
                <td><input type="text" name="size" id="qty" required="required" placeholder="s"  class="td2"></td>
            </tr>
            <tr>
                <td><td>
                <td style="position: relative; left: -47em;"><button value="Insert" style="background-color: orange; border: 10px white; height: 2.2em; width: 8em;  font-size: 1em; color: aliceblue;"><strong>Insert</strong></button></td>
            </tr>
        </table>
    </form>
    </div>



    
</body>
</html>