<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<title>FLAMES</title>
</head>
<body class="bg-dark">
<div class="card text-center bg-dark text-light font-italic">
      <div class="card-header">
       <h1>F L A M E S</h1>
        <marquee>Friends Lovers Affectionate Marriage Enemies Sisters</marquee>
  </div>
  <h4 style="text-align:right;font-family:'Calibri'"><a href="About.html">About</a></h4>

<div class="card-body">
  <form action="Validate.jsp" method="GET" onSubmit="return validate()">
   <div class="form-group">
      <label>Enter name1</label>
      <input type = "text" class="form-control" size="15" name="names1" id="name1"required>
  </div>
  <div class="form-group">
   <label>Enter name2</label>
        <input type = "text" class="form-control" size="15" name="names2" id="name2" required>
        </div>
        <button type="submit" class="btn btn-primary" >Submit</button>
  </form>
  
  </div>
  <div>
  <label id="output" class=" text-white">
        $$<%=request.getAttribute("result") %>$$
  </label>
  </div>
  </div>
  <p id="out"></p>
  <footer style="color:white">Developed by MAPS</footer>
</body>
<script>
   //document.getElementById('out').innerHTML = "man";
function validate(){
	var element1 = document.getElementById("name1");
	var element2 = document.getElementById("name2");
	var regexp = /^[a-zA-Z]+$/; 
	if(element1.value.match(regexp) && element2.value.match(regexp)) 
	{
    //alert("Letter Validation: Successful."); 
	return true; 
	}
	else{
	alert("enter valid text"); element1.focus();
	element2.focus();
	return false; 
	}
}
</script>
</html>