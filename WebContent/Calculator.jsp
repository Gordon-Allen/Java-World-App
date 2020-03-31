<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculator</title>
</head>
<body>
<form method="POST" action="CalculatorResult.jsp">
  <input type="text" name="number1" placeholder="Enter number 1">
  
  <select name="Operation">
	  <option value="+">+</option>
	  <option value="-">-</option>
	  <option value="x">x</option>
	  <option value="/">/</option>
  </select>
  
  <input type="text" name="number2" placeholder="Enter number 2">
  <input type="submit" value="Calculate">
</form>
</body>
</html>