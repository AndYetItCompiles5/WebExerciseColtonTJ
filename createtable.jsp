<html>
<head>
<meta content="text/html; charset=ISO-8859-1" http-equiv="content-type">
<title>createtable.jsp</title>
<style type="text/css"></style>
</head>
<body
	<%
	String name = request.getParameter("Name");
	String numRows = request.getParameter("Rows");
	String numColumns = request.getParameter("Columns");
	int numRowsInt = Integer.parseInt(numRows);
	int numColumnsInt = Integer.parseInt(numColumns);
	%>
	style="color: rgb(252, 252, 252); background-color: rgb(28, 28, 28);"
	alink="#66ffff" link="#cccccc" vlink="#9c279c">
	<span style="color: rgb(0, 0, 1);"><span style="color: white;">
	Hello <% out.println(name);%>. Here is your table!
	</span></span>
	<br>
	<table style="text-align: left; width: 303px; height: 32px;" border="1"
		cellpadding="2" cellspacing="2">
		<tbody>
			<% 
			if(numRowsInt <= 0){
				response.sendRedirect("classexercise.jsp?rowError=1&name="+ name);
				return;
			}
			else if(numColumnsInt <= 0){
				response.sendRedirect("classexercise.jsp?rowError=1&name="+ name);
				return;
			}
			
			for(int i=1; i<=numRowsInt; i++){
				out.println("<tr>");
				for(int j=1; j<=numColumnsInt; j++){
					out.println("<td>" + i + ", " + j + "</td>");
				}
				out.println("</tr>");
			}
				%>
		</tbody>
	</table>
	<br>
</body>
</html>
