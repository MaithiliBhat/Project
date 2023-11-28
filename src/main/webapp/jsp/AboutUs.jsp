<%@page import="com.protech.pharmaplus.dto.Customer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <!DOCTYPE html>
    <html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>About Us</title>
       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
       <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

       <link rel="icon" href="../images/favicon.ico">
        <link rel="stylesheet" href="../css/AboutUs.css">
       </head>
    <body>
        <nav>
            <div id="part1">
                HOME DECOR<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRBAxZhuRD9Zk1NoY4s2lVBNUvAAWN0YPu8Ww&usqp=CAU" width="25px" height="25px">
            </div>
            <div id="part2">
                <li><a href="/" id="part3">Home</a></li>
                <li><a href="/aboutus" id="part4">About Us</a></li>
                <li><a href="/customer/products" id="part5">Products</a></li>
                <%Customer customer=(Customer)session.getAttribute("customer"); 
                               if(customer==null){
                         %>
                <li><a href="/customer/login"id="part6">Login</a></li>
                <li><a href="/customer/signup" id="part7">Signup</a></li>
                  <%}else{%>
                     <div class="cart">
                <a href="/customer/cart" class="cart"><img src="data:image/jpeg;base64,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" alt="Cart" width="39em" height="39em" style="border-radius: 10em;"></a>   
            </div>
                        <div>
                            <a href="/logout" style="text-decoration: none; color: white;">Logout</a>
                            
                        </div>
                         <%} %>
                    </div>
                   
                
                <div class="admin" style="position: relative;left:25%;top:6px">
               
                  <a href="/admin/login" class="admin" style="text-decoration: none;">
                    <img height="55px" width="55px" alt="" src="https://cdn.pixabay.com/photo/2021/03/11/07/37/man-6086415_640.png"></a>
              </div>
          </div> 
            </div>
        </nav>
       
    
        <div id="nav_child2">
            <form action="/customer/search" method="post">
            <input type="search" placeholder="Search" name="product"style="position: relative;right:290%;top:28px"><button href="" style="background-color: white;border:none; width: 25px; position: relative;right:305%;top: 28px;" >
        <i style="color: rgb(20, 20, 20); position: relative ;right:60%;z-index: 4;" class="fa-solid fa-magnifying-glass"></i>
            </button>
            </form>
            </div>                                                                                                                                                                                                                                                                                                                                                                                                  
            <div class="ip">
                <div class="chil">
                    <img src="https://cdn.pixabay.com/photo/2017/09/27/08/20/restaurant-2791295_640.jpg" alt="" width="550px" height="350px">
                </div>
               <div class="par">
                <div class="ic">
                    <h1>How we started?</h1>
                    <p>Our website was started due to people who are facing <br>problems related to furniture which is out of stock <br>and to the people who are unable to find <br>the unquie interior.We decided to start our 
                    <br> company called HOME DECOR in 2022 and now we <br> are providing Interior and utilities at the <br>
                     given time and there is no word for out of stock </p>
                 </div> 
                </div>
            </div>
            <div class="chil2">
                <div class="chil4">
                    <h1>CONVINIENCE</h1>
                    <p>Heavy traffic, lack of parking, monsoons, shop closed, forgetfulnessâ¦ these are some of the reasons that could lead to skipping of vital medications.  Since taking medicines regularly is a critical component of managing chronic medical conditions, itâs best not to run out of essential medicines. Just log on to netmeds.com, place your order online and have your interiors delivered to you â without leaving the comfort of your home.</p>
            </div>
                <div class="chil3"><img src="https://cdn.pixabay.com/photo/2014/09/11/22/00/dock-441989_640.jpg" alt="" width="550px" height="350px"> 
                </div>
            </div>
            <div class="card-group">
                <div class="card">
                  <img src="https://foyr.com/learn/wp-content/uploads/2018/10/what-does-an-interior-designer-do.jpg" card-img-top" alt="...">
                  <div class="card-body">
                    <h5 class="card-title">Kelly Wearstler</h5>
                    <p class="card-text">Kelly is an American who built her own interior design company, Kelly Wearstler Interior Design, in Los Angeles in 1995. Her brand is known the world over for catering to various lifestyles and having a blend of contemporary, modern, vintage and bold vibes. She was titled the ‘presiding grande dame of West Coast interior design, by the New Yorker magazine, and also runs her own gallery and online stores..</p>
                  </div>
                  <div class="card-footer">
                    <small class="text-muted">Last updated 3 mins ago</small>
                  </div>
                </div>
                <div class="card">
                  <img src="https://foyr.com/learn/wp-content/uploads/2021/11/most-famous-female-interior-designers-scaled.jpg" class="card-img-top" alt="...">
                  <div class="card-body">
                    <h5 class="card-title">Sarah Kuchar</h5>
                    <p class="card-text">Sarah’s journey in design began once she enrolled in a design school in Chicago, without knowing anything about architecture or interior design. She then worked at Perkins + Will and after a decade, began her own brand with the motto, ‘no rules’. Sarah loves challenging existing design concepts and throwing up crazy ideas. .</p>
                  </div>
                  <div class="card-footer">
                    <small class="text-muted">Last updated 3 mins ago</small>
                  </div>
                </div>
                <div class="card">
                  <img src="https://d39l2hkdp2esp1.cloudfront.net/img/photo/247392/247392_00_2x.jpg?20211207114514" class="card-img-top" alt="...">
                  <div class="card-body">
                    <h5 class="card-title">Amy Lau</h5>
                    <p class="card-text">Amy Lau has had an interesting past. According to her, her creativity is inspired by the time she spent with her grandmother who was a mineralogist. She has previously worked at Sotheby’s, as well as with several renowned art galleries across the US. Her aesthetic and interior design is inspired by interiors from across the entire nation – from Texas to Tribeca..</p>
                  </div>
                  <div class="card-footer">
                    <small class="text-muted">Last updated 3 mins ago</small>
                  </div>
                </div>
              </div>
              <div class="parent1">
                <div class="child1">Why Home Decor?</div>
                <div class="child2">
                    <div class="child21"><img src="https://super.homelane.com/RTB/installation_days.svg"  width="106px" height="112px"></div>
                    <div class="child22"><img src="https://super.homelane.com/RTB/homes_completed.svg" width="106px" height="112px"></div>
                    <div class="child23"><img src="https://super.homelane.com/RTB/design_experts.svg" width="106px" height="112px"></div>
                    <div class="child24"><img src="https://super.homelane.com/RTB/material_warranty.svg"width="106px" height="112px"></div>
                </div>
                </div>
                <footer class="w-100 py-4 flex-shrink-0 position-relative top-60 my-3">
                    <div class="container py-4">
                        <div class="row gy-4 gx-5">
                            <div class="col-lg-4 col-md-6">
                                <h5 class="h1 text-white">Home Decor</h5>
                                <p class="small text-muted">We offer a wide range of products, including:
            
            <li style="color:rgb(108, 108, 108);">Mirror.</li>
            <li style="color:rgb(108, 108, 108);">Sofa</li>
            <li style="color:rgb(108, 108, 108);">Best products</li>
            <li style="color:rgb(108, 108, 108);">Dining and chiars</li>
            <li style="color:rgb(108, 108, 108);">Dressing table</li></p>
                                
                            </div>
                            <div class="col-lg-2 col-md-6">
                                <h5 class="text-white mb-3">Quick links</h5>
                                <ul class="list-unstyled text-muted">
                                    <li><a href="/" style="color:rgb(108, 108, 108);text-decoration: none;">Home</a></li>
                                    <li><a href="/aboutus" style="color:rgb(108, 108, 108);text-decoration: none;">About</a></li>
                                    <li><a href="/customer/products" style="color:rgb(108, 108, 108);text-decoration: none;">Products</a></li>
                                    <li><a href="/customer/signup" style="color:rgb(108, 108, 108);text-decoration: none;">Signup</a></li>
                                </ul>
                            </div>
                            <div class="col-lg-2 col-md-6">
                                <h5 class="text-white mb-3">Customer Support</h5>
                                <ul class="list-unstyled text-muted">
                                    <li><a href="#"style="color:rgb(108, 108, 108);text-decoration: none;">Telephone no:23155663</a></li>
                                    <li><a href="#"style="color:rgb(108, 108, 108);text-decoration: none;">Watsapp no:9686750750</a></li>
                                    <li><a href="#"></a></li>
                                    <li><a href="#"></a></li>
                                </ul>
                            </div>
                            <div class="col-lg-4 col-md-6" style="position: relative;left: 90px;">
                                <h5 class="text-white mb-3">Delivery</h5>
                                <p class="small text-muted"><li style="color:rgb(108, 108, 108);">Increased customer satisfaction</li>
                                <li style="color:rgb(108, 108, 108);">Free delivery costs</li>
                                <li style="color:rgb(108, 108, 108);">Improved efficiency</li>
                                <li style="color:rgb(108, 108, 108);">Enhanced reputation</li>
                                
                                </p>
                              
                                    
                            </div>
                        </div>
                    </div>
                </footer>
            </div>
               
            
            
            
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
                <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
            <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>   
            </body>
            </html>                    