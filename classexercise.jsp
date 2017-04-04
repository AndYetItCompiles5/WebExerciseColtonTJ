<html>
<head>
<meta content="text/html; charset=ISO-8859-1" http-equiv="content-type">
<title>classexercise.jsp</title>
</head>
<body>
	<form action="createtable.jsp" name="form">
		Please enter the dimensions of the desired table below:<br>
		<table style="text-align: left; width: 392px; height: 130px;"
			border="1" cellpadding="2" cellspacing="2">
			<% String rowError = request.getParameter("rowError");
				String name = request.getParameter("name");
				if(rowError!=null && rowError.equals("1")){
					out.println("Hey " + name + ", please provide a row value greater than 0.");
				}
				String columnError = request.getParameter("columnError");
				if(columnError!=null && columnError.equals("1")){
					out.println("Hey " + name + ", please provide a column value greater than 0.");
				}
				%>
			<tbody>
				<tr>
					<td style="vertical-align: top;">Enter your name<br>
					</td>
					<td style="vertical-align: top;"><input name="Name"></td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Enter number of rows<br>
					</td>
					<td style="vertical-align: top;"><input name="Rows"><br>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;">Enter number of columns<br>
					</td>
					<td style="vertical-align: top;"><input name="Columns"><br>
					</td>
				</tr>
				<tr>
					<td style="vertical-align: top;"><input name="Submit"
						value="Submit" type="submit"><br></td>
					<td style="vertical-align: top;"><input name="Reset"
						value="Reset" type="reset"><br></td>
				</tr>
			</tbody>
		</table>
		<br>
	</form>
</body>
</html>
