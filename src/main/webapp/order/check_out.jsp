<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
 
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Foores - Single Restaurant Version">
    <meta name="author" content="Ansonika">
    <title>Foores - Single Restaurant Version</title>
    <!-- GOOGLE WEB FONT -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Lora:ital@1&family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
	<c:url var="CSS" value="/order/css"></c:url>
	<c:url var="JS" value="/order/js"></c:url>
    <!-- BASE CSS -->
    <link href="${CSS}/vendors.min.css" rel="stylesheet">
    <link href="${CSS}/style.css" rel="stylesheet">

</head>

<body>

    <div id="preloader">
        <div data-loader="circle-side"></div>
    </div>
    <!-- /Page Preload -->
	<c:if test="${not empty error}">
		<center><h2>Error: ${error}</h2></center>
	</c:if>
    <main class="pattern_2">
    <form action='<c:url value="/CheckOut"></c:url>' method="post"> 
        <div class="container margin_60_40">
            <div class="row justify-content-center">
                <div class="col-xl-6 col-lg-8">
                    <div class="box_booking_2 style_2">
                        <div class="head">
                            <div class="title">
                                <h3>Personal Details</h3>
                            </div>
                        </div>
                        <!-- /head -->
                        <div class="main">
                            <div class="form-group">
                                <label>First and Last Name</label>
                                <input class="form-control" name="fullname" placeholder="First and Last Name" required="required">
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Email Address</label>
                                        <input class="form-control" name="email" value="${sessionScope.user.email}" placeholder="Email Address"  required="required">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Phone</label>
                                        <input class="form-control" name="phone" placeholder="Phone" required="required">
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label>Full Address</label>
                                <input class="form-control" name="address" placeholder="Full Address" required="required">
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>City</label>
                                        <input class="form-control" name="city" placeholder="City">
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-group">
                                        <label>Postal Code</label>
                                        <input class="form-control" placeholder="0123">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /box_booking -->
                    <div class="box_booking_2 style_2">
                        <div class="head">
                            <div class="title">
                                <h3>Payment Method</h3>
                            </div>
                        </div>
                        <!-- /head -->
                        <div class="main">
                            <div class="payment_select">
                                <label class="container_radio">Credit Card
					                <input type="radio" value="Credit Card" checked name="payment_method">
					                <span class="checkmark"></span>
					            </label>
                                <i class="icon_creditcard"></i>
                            </div>
                            <div class="form-group">
                                <label>Name on card</label>
                                <input type="text" class="form-control" id="name_card_order" name="name_card_order" placeholder="First and last name">
                            </div>
                            <div class="form-group">
                                <label>Card number</label>
                                <input type="text" id="card_number" name="card_number" class="form-control" placeholder="Card number">
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <label>Expiration date</label>
                                    <div class="row">
                                        <div class="col-md-6 col-6">
                                            <div class="form-group">
                                                <input type="text" id="expire_month" name="expire_month" class="form-control" placeholder="mm">
                                            </div>
                                        </div>
                                        <div class="col-md-6 col-6">
                                            <div class="form-group">
                                                <input type="text" id="expire_year" name="expire_year" class="form-control" placeholder="yyyy">
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6 col-sm-12">
                                    <div class="form-group">
                                        <label>Security code</label>
                                        <div class="row">
                                            <div class="col-md-4 col-6">
                                                <div class="form-group">
                                                    <input type="text" id="ccv" name="ccv" class="form-control" placeholder="CCV">
                                                </div>
                                            </div>
                                            <div class="col-md-8 col-6">
                                                <img src="<c:url value='/order/img/icon_ccv.gif'></c:url>" width="50" height="29" alt="ccv"><small>Last 3 digits</small>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--End row -->
                            <div class="payment_select" id="paypal">
                                <label class="container_radio">Pay with Paypal
					                <input type="radio" value="Paypal" name="payment_method">
					                <span class="checkmark"></span>
					            </label>
                            </div>
                            <div class="payment_select">
                                <label class="container_radio">Pay with Cash
					                <input type="radio" value="Cash" name="payment_method">
					                <span class="checkmark"></span>
					            </label>
                                <i class="icon_wallet"></i>
                            </div>
                        </div>
                    </div>
                    <!-- /box_booking -->
                </div>
                <!-- /col -->
                <div class="col-xl-4 col-lg-4" id="sidebar_fixed">
                    <div class="box_booking">
                        <div class="head">
                            <h3>Order Summary</h3>
                        </div>
                        <!-- /head -->
                        <div class="main">
                        	<ul>
		                		<li>Date<span>Today ${date}</span></li>
		                		<li>Hour<span>${hour}</span></li>
		                		<li>Type<span>Delivery</span></li>
		                	</ul>
		                	<hr>
                            <ul class="clearfix">
                            	<c:forEach var="Item" items="${sessionScope.listFood}">
                            		<li>${Item.amount}x ${Item.food.name}<span>$${Item.food.price*Item.amount}</span></li>	
                            	</c:forEach>                            
                            </ul>
                            <ul class="clearfix">
                                <li>Subtotal<span>$${sessionScope.total}</span></li>
                                <li>Delivery fee<span>$10</span></li>
                                <li class="total">Total<span>$${sessionScope.total+10}</span></li>
                            </ul>
                            <input type="hidden" name="action" value="order">
                            <button type="submit" class="btn_1 full-width mb_5">Order Now</button>
                            <div class="text-center"><small>Or Call Us at <strong>(84)938760137</strong></small></div>
                        </div>
                    </div>
                    <!-- /box_booking -->
                </div>
            </div>
            <!-- /row -->
        </div>
        <!-- /container -->
        </form>
    </main>
    <!-- /main -->
    <!-- Back to top button -->

    <!-- COMMON SCRIPTS -->
    <script src="${JS}/common_scripts.min.js"></script>
    <script src="${JS}/common_func.js"></script>

    <!-- SPECIFIC SCRIPTS -->
    <script src="${JS}/sticky_sidebar.min.js"></script>
    <script src="${JS}/shop_order_func.js"></script>

</body>
</html>