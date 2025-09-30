<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script type="text/javascript">

	function display()
	{
		alert("Welcom to TCA");
	}

	function modify()
	{
		alert("Changing the heading...");
		var h1=document.getElementById("ab");
		h1.innerHTML="New Changed Text";
	}

	
</script>

</head>
<body>

<input type="Submit" value="Button" onclick="display()"> <br/>
----------------------------------------------------------------------------------<br/>
<h1 id="ab">Hello Word </h1>
<button onclick="modify()">Change Heading</button>

</body>
</html>