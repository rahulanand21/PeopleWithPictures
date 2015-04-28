<%-- 
    Document   : index
    Created on : 4 Jul, 2014, 3:45:05 PM
    Author     : rahulanand21
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
     
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body background="C:\Users\rahulanand21\Downloads\Flowers background desktop wallpapers. (3).jpg" style="text-align: center" >
        <h1>Welcome To Actor Image Database!</h1>
        <br/><br/>
        <table align="center">
            <tbody>
                <tr>
                    <td><form name="myForm1" action="Upload.jsp" method="POST">
                            <input type="submit" value="Upload" name="uploadjsp" style="width:120px;height:30px;  border-color: purple; margin: 50px"  />
        </form></td>
                </tr>
                <tr>
                    <td><form name="myForm2" action="select.jsp" method="POST">
            <input type="submit" value="View" name="viewjsp" style="width:120px;height:30px; border-color: purple"  />
        </form></td>
                </tr>
            </tbody>
        </table>

        
       
        
       
    </body>
</html>
