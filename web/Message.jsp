<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Message</title>
</head>
<body background="C:\Users\rahulanand21\Downloads\Flowers background desktop wallpapers. (3).jpg">
    <center>
        <h3><%=request.getAttribute("Message")%></h3>
        <br/><br/>
        <form name="myForm" action="Upload.jsp" method="POST">
            <input type="submit" value="Upload More Contacts" name="uploadjsp" style="width:150px;height:30px;  border-color: purple; margin: 50px" />
        </form>
        <form name="ReturnForm" action="index.jsp" method="post">
             <input type="submit" value="Go To Home" name="indexjsp" style="width:150px;height:30px;  border-color: purple; margin: 50px" />
        </form>
    </center>
</body>
</html>