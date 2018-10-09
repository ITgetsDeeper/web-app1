<html>
    <head>
        <title>Enter two numbers to add up</title>
    </head>
    
    <body>
	<%
		try{int x=Integer.parseInt(request.getParameter("t1"));
		int y=Integer.parseInt(request.getParameter("t2"));
		out.println("Addition of numbers is "+ (x+y));
		}
		catch(Exception e) {
	 	out.println("You entered invalid number");
		}
	%>
    </body>
</html>