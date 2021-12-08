<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  
<!DOCTYPE html>
<html>
<head>
	<!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"> 
	<link rel="stylesheet" href='<c:url value="/manager/stylemanage.css"></c:url>'>
</head>
<body class="body">
	<c:url value="/Manage" var="MANAGE"></c:url>
	<c:url value="/Home" var="HOME"></c:url>
	
	<nav class="nav">
        <div class="container">
            <h1 class="logo"><a href='<c:url value="/Home"></c:url>'>GODZILLA</a></h1>
            <ul>
                <li><a href="${HOME}">Home</a></li>
                <li><a href="${MANAGE}/ManageOrder" class="current">Manage Order</a></li>
                <li><a href="${MANAGE}/ManageFood">Manage Food</a></li>
                <li><a href="${MANAGE}/ManageBooking">Manage Booking</a></li>
                <li><a href="${MANAGE}/ManageChat" >Chat With Customer</a></li>                
            </ul>
        </div>
    </nav>
    <main class="container">
	    <section class="menu-left">
	    <br />
	    	<ul class="menu-strip">
	    		<li><button id="button1">Order Now</button></li>
	    		<li><button id="button2">Order Wait</button></li>
	    		<li><button id="button3">History</button></li>
	    	</ul>
	    </section>
	    <section class="menu-right">
	    <div class="now">
	    	<h1>Order Now</h1>
	    	<table class="tables table table-stripe">
	    		<tr>
	    			<th>ID</th>
	    			<th>Email</th>
	    			<th>Time</th>
	    			<th>Status</th>
	    			<th>Action</th>
	    		</tr>
	    		<c:forEach var="item" items="${order_now}">
					<tr>
						<td>${item.id}</td>
						<td>${item.user.email}</td>
						<td>${item.date}</td>
						<td>Cooking</td>
						<td>
							<a href="<c:url value='/Manage/View?action=view&ID=${item.id}'></c:url>">View</a>
							<a href="<c:url value='/Manage/ManageOrder?action=finished&ID=${item.id}'></c:url>">Finished</a>						
						</td>
					</tr>
				</c:forEach>
	    	</table>
	    </div>
	    <div class="wait">
	    	<h1>Order Wait</h1>
	    	<table class="tables table table-stripe" >
	    		<tr>
	    			<th>ID</th>
	    			<th>Email</th>
	    			<th>Time</th>
	    			<th>Status</th>
	    			<th>Action</th>
	    		</tr>
	    		<c:forEach var="item" items="${order_wait}">
					<tr>
						<td>${item.id}</td>
						<td>${item.user.email}</td>
						<td>${item.date}</td>
						<td>Wait For Confirm</td>
						<td>
							<a href="<c:url value='/Manage/View?action=view&ID=${item.id}'></c:url>">View</a>
							<a href="<c:url value='/Manage/ManageOrder?action=accept&ID=${item.id}'></c:url>">Accept</a>	
							<a href="<c:url value='/Manage/ManageOrder?action=deny&ID=${item.id}'></c:url>">Deny</a>						
												
						</td>
					</tr>
				</c:forEach>
	    	</table>
	    </div>
	    <div class="history">
	    	<h1>History</h1>
	    	<table class="tables table table-stripe">
	    		<tr>
	    			<th>ID</th>
	    			<th>Email</th>
	    			<th>Time</th>
	    			<th>Status</th>
	    			<th>Action</th>
	    		</tr>
	    		<c:forEach var="item" items="${order_history}">
					<tr>
						<td>${item.id}</td>
						<td>${item.user.email}</td>
						<td>${item.date}</td>
						<td>${item.status == 2? 'Finished':'Denied'}</td>
						<td>
							<a href="<c:url value='/Manage/View?action=view&ID=${item.id}'></c:url>">View</a>
						</td>
					</tr>
				</c:forEach>
	    	</table>
	    </div>
	    </section>
    </main>
    <div>${sessionScope.error_view_order}</div>
 	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
	<script type="text/javascript" src='<c:url value ="/manager/manager.js"></c:url>'></script>
</body>
</html>