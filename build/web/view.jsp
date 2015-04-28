<%-- 
    Document   : view
    Created on : 6 Jul, 2014, 5:12:51 PM
    Author     : rahulanand21
--%>
<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script language="javascript">
            <!--
            function hello()
            {
                alert("Image Loaded");
                    
            }
            //-->
            </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body onload="hello()">
        <h1>Image Of Actor:</h1>
        <%!
        public class Actor{
            String URL="jdbc:mysql://localhost:3306/appdb";
            String USERNAME="root";
            String PASSWORD="root";
            
            Connection connection=null;
            PreparedStatement viewActors=null;
            ResultSet result=null;
            
            public Actor(){
                
                try {
                    
                    connection =DriverManager.getConnection(URL,USERNAME,PASSWORD);
                    viewActors=connection.prepareStatement("SELECT * FROM contacts WHERE contact_id= ?");
                }catch(SQLException e){
                e.printStackTrace();
                e.getMessage();
                e.getSQLState();
                
                }
            }            
           public ResultSet tryActor(Integer actorid)
            {
                
                try
                {
                    viewActors.setInt(1,actorid);
                    result=viewActors.executeQuery();
                    
                }catch(SQLException e){
                    e.printStackTrace();
                }
                return result;
                
            }
            }
        %>
        <%
            int result=0;
            Actor actor=new Actor();
            ResultSet oneactor;
            Integer actorid=new Integer(0);
            if(request.getParameter("actorvalue")!=null)
            {
                actorid=Integer.parseInt(request.getParameter("actorvalue"));
                
            }
            oneactor=actor.tryActor(actorid);
            
            %>
            
                    <% while(oneactor.next()){ %>
                    <%Blob bl = oneactor.getBlob("photo");
        byte[] pict = bl.getBytes(1,(int)bl.length());
        response.setContentType("text/html");
        OutputStream o = response.getOutputStream(); %>
        <%o.write(pict);
        o.flush();
        %>
        
        <% } %>
        
        </body>
</html>
