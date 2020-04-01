<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Result</title>
<style>h1 {color: blue; text-decoration-line: underline;} em {color: green; text-decoration-line: underline;} .input-num {color: blue;}</style>
</head>
<body>

<h1>Your Calculation Result:</h1>

<%
	double num1, num2, result;
	String Operation;
	
	num1 = Double.parseDouble(request.getParameter("number1"));
	num2 = Double.parseDouble(request.getParameter("number2"));
	Operation = request.getParameter("Operation");
		
	switch (Operation)
	{
		case "+":
			result = num1 + num2;
			out.print("<h2><span class='input-num'>" + num1 + " + "+ num2 + "</span> = <em>" + result + " (=> " + (int) result + ")</em></h2>");
			break;
		case "-":
			result = num1 - num2;
			out.print("<h2><span class='input-num'>" + num1 + " - "+ num2 + "</span> = <em>" + result + " (=> " + (int) result + ")</em></h2>");
			break;
		case "x":
			result = num1 * num2;
			out.print("<h2><span class='input-num'>" + num1 + " * "+ num2 + "</span> = <em>" + result + " (=> " + (int) result + ")</em></h2>");
			break;
		case "/":
			result = num1 / num2;
			out.print("<h2><span class='input-num'>" + num1 + " / "+ num2 + "</span> = <em>" + result + " (=> " + (int) result + ")</em></h2>");
			break;
		default:
			out.print("Invalid Input");
			break;
	}
%>
</body>
</html>