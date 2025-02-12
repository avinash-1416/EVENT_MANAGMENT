<%-- 
    Document   : practical
    Created on : 21-Feb-2024, 7:06:28 pm
    Author     : shakthisravanth
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="model.Registration"%>
<%@page import="model.ProductData"%>
<%@page import="java.util.*"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Book</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/style.css" />
    <style>
        /* Additional Styles */
        .fasak {
            display: flex;
            justify-content: space-around;
            align-items: flex-start;
            margin-top: 20px;
        }

        .payment-side, .image-side {
            flex-basis: 45%;
            padding: 20px;
        }

        .carousel-inner img {
            width: 100%;
            height: auto;
            border-radius: 10px;
        }

        .carousel-caption {
            background-color: rgba(0, 0, 0, 0.5);
            padding: 10px;
        }

        .price {
            color: red;
            font-size: 30px;
            font-weight: bold;
        }

        .payment-card button {
            padding: 10px 20px;
            background-color: #FF9900;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
        }

        .payment-card button:hover {
            background-color: #FF6600;
        }

    </style>
</head>
<body>
    <header id="menu-jk">
         <div id="nav-head" class="header-nav">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-2 col-md-3  col-sm-12" style="color:#000;font-weight:bold; font-size:42px; margin-top: 1% !important;">Happy</div>
                        <div id="menu" class="col-lg-8 col-md-9 d-none d-md-block nav-item">
                            <ul >
                                <li><a href="#"onMouseOver="this.style.color = '#00ab9f'"
                                       onMouseOut="this.style.color = 'black'"></a><h2> You are one step ahead to book event <% if (session.getAttribute("uname") != null) {%>
                                        <span style="color: #00ab9f;"><%=session.getAttribute("uname")%></span> <%}%> </h2></li>

                            </ul>

                        </div>

                        <div class="col-sm-2 d-none d-lg-block appoint">

                            <a class="btn btn-success" href="register?logout=yes">Logout</a>  
                        </div>

                    </div>

                </div>
            </div>
    </header>
                                         
                
                                        
    <div class="container fasak">
        <div class="image-side">
            <div id="imageCarousel" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="https://images.pexels.com/photos/796606/pexels-photo-796606.jpeg?auto=compress&cs=tinysrgb&w=800" alt="Image 1">
                    </div>
                    <div class="carousel-item">
                        <img src="gallery/Birthday3.jpeg" class="d-block w-100" alt="Image 2">
                    </div>
                    <div class="carousel-item">
                        <img src="gallery/Birthday2.jpg" class="d-block w-100" alt="Image 3">
                    </div>
                </div>
                <a class="carousel-control-prev" href="#imageCarousel" role="button" data-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="sr-only">Previous</span>
                </a>
                <a class="carousel-control-next" href="#imageCarousel" role="button" data-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="sr-only">Next</span>
                </a>
            </div>
            <h3> <%=s.getName()%></h3>
            <p>Happy Birthday...</p>
        </div>
        <div class="payment-side">
            <div class="payment-card">
                <h2>Payment</h2>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et doloreipsum dolor sit amet, consectetur l adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p>
                <p class="price">₹999.99</p>
                <button>Book Now</button>
            </div>
        </div>
    </div>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.bundle.min.js"></script>
    <script>
        // Initialize the carousel
        $(document).ready(function(){
            $('#imageCarousel').carousel();
        });
    </script>
</body>
</html>
