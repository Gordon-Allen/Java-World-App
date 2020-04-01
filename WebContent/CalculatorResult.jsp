<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Result</title>
<style>h1 {color: blue; text-decoration-line: underline;}</style>
</head>
<body>

<h1>Your Calculation Result:</h1>

<%
	double num1, num2, result;
	String Operation;
	
	num1 = Double.parseDouble(request.getParameter("number1"));
	num2 = Double.parseDouble(request.getParameter("number2"));
	Operation = request.getParameter("Operation");
	
	

/* 	if(Operation.equals("+"))
	{
		result = num1 + num2;
		out.print(num1 + " + "+ num2 + " = " + result + " => " + (int) result);
	}
	else if(Operation.equals("-"))
	{
		result = num1 - num2;
		out.print(num1 + " - "+ num2 + " = " + result + " => " + (int) result);
	}
	else if(Operation.equals("x"))
	{
		result = num1 * num2;
		out.print(num1 + " * "+ num2 + " = " + result + " => " + (int) result);
	}
	else if(Operation.equals("/"))
	{
		result = num1 / num2;
		out.print(num1 + " / "+ num2 + " = " + result + " => " + (int) result);
	}
 */	
	
	switch (Operation) {
	case "+":
		result = num1 + num2;
		out.print(num1 + " + "+ num2 + " = " + result + " => " + (int) result);
		break;
	case "-":
		result = num1 - num2;
		out.print(num1 + " - "+ num2 + " = " + result + " => " + (int) result);
		break;
	case "x":
		result = num1 * num2;
		out.print(num1 + " * "+ num2 + " = " + result + " => " + (int) result);
		break;
	case "/":
		result = num1 / num2;
		out.print(num1 + " / "+ num2 + " = " + result + " => " + (int) result);
		break;
	default:
		out.print("Invalid Input");
		break;
	}

%>
</body>
</html>