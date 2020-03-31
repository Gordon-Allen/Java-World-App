<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Result</title>
</head>
<body>

<h1>Your Calculation Result:</h1>

<%
	int num1, num2;
	String Operation;
	
	num1 = Integer.parseInt(request.getParameter("number1"));
	num2 = Integer.parseInt(request.getParameter("number2"));
	Operation = request.getParameter("Operation");

	if(Operation.equals("+"))
	{
		out.print(num1 + num2);
	}
	else if(Operation.equals("-"))
	{
		out.print(num1 - num2);
	}
	else if(Operation.equals("x"))
	{
		out.print(num1 * num2);
	}
	else if(Operation.equals("/"))
	{
		out.print(num1/num2);
	}
%>
</body>
</html>