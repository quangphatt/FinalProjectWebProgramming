<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport"
		content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="Foores - Single Restaurant Version">
	<meta name="author" content="Ansonika">
	<title>Foores - Single Restaurant Version</title>
	<!-- GOOGLE WEB FONT -->
	<link rel="preconnect" href="https://fonts.googleapis.com">
	<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
	<link
		href="https://fonts.googleapis.com/css2?family=Lora:ital@1&family=Poppins:wght@400;500;600;700&display=swap"
		rel="stylesheet">
	<c:url var="CSS" value="/order/css"></c:url>
	<c:url var="JS" value="/order/js"></c:url>

	<!-- BASE CSS -->
	<link href="${CSS}/vendors.min.css" rel="stylesheet">
	<link href="${CSS}/style.css" rel="stylesheet">
	<link href="${CSS}/shop.css" rel="stylesheet">
</head>
<body>
	<main>
		<form action="<c:url value='/YourCart'></c:url>" method="post">
			<div class="bg_gray">
				<div class="container margin_60_40">
					<table class="table table-striped cart-list">
						<thead>
							<tr>
								<th>Product</th>
								<th>Price</th>
								<th>Quantity</th>
								<th>Subtotal</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<c:forEach var="Item" items="${listFood}">
								<tr>
									<td>
										<input type="hidden" value="${Item.food.id}" name="food_id">
										<div class="thumb_cart">
											<img src="${Item.food.image}" class="lazy" alt="Image">
										</div> <span class="item_cart">${Item.amount}x ${Item.food.name}</span>
									</td>
									<td><strong>$${Item.food.price}.00</strong></td>
									<td>
										<div class="numbers-row">
											<input type="text" value="${Item.amount}" id="quantity_1" class="qty2"
												name="quantity_1">
											<div class="inc button_inc">+</div>
											<div class="dec button_inc">-</div>
										</div>
									</td>
									<td><strong>$${Item.food.price*Item.amount}.00</strong></td>
									<td class="options"><a href="#"><i class="ti-trash"></i></a>
									</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
					<div class="row add_top_30 flex-sm-row-reverse cart_actions">
						<input type="hidden" name="action" value="update">
						<div class="col-sm-4 text-right">
							<button type="submit" class="btn_1 outline">Update Cart</button>
						</div>
						<div class="col-sm-8">
							<div class="apply-coupon">
								<div class="form-group form-inline">
									<input type="text" name="coupon-code" value=""
										placeholder="Promo code" class="form-control d-inline"
										style="width: 150px;">
									<button type="button" class="btn_1 outline">Apply
										Coupon</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
		<div class="box_cart">
			<div class="container">
				<div class="row justify-content-end">
					<div class="col-xl-4 col-lg-4 col-md-6">
						<ul>
							<li><span>Subtotal</span> $${total}.00</li>
							<li><span>Delivery fee</span> $10.00</li>
							<li><span>Total</span> $${total+10}.00</li>
						</ul>
						<a href="<c:url value='/CheckOut'></c:url>"
							class="btn_1 full-width cart">Proceed to Checkout</a>
					</div>
				</div>
			</div>
		</div>

	</main>
	<!-- /main -->

	<!-- COMMON SCRIPTS -->
	<script src="${JS}/common_scripts.min.js"></script>
	<script src="${JS}/common_func.js"></script>
	<!-- SPECIFIC SCRIPTS -->
	<script src="${JS}/specific_shop.js"></script>

</body>
</html>