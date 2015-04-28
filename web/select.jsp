<%-- 
    Document   : index
    Created on : 2 Jul, 2014, 12:17:33 AM
    Author     : rahulanand21
--%>
<%@page import="java.io.*" %>
<%@page import="java.sql.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%Class.forName("com.mysql.jdbc.Driver"); %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Selecting data from a DB</title>
    </head>
    <body background="C:\Users\rahulanand21\Downloads\film-background.jpg">
        <h1 style="text-align: center;margin-bottom: 100px">Selecting An Actor</h1>
        <%!
        public class Actor{
            String URL="jdbc:mysql://localhost:3306/appdb";
            String USERNAME="root";
            String PASSWORD="root";
            
            Connection connection=null;
            PreparedStatement selectActors=null;
            ResultSet resultSet=null;
            
            public Actor(){
                
                try {
            
                    connection =DriverManager.getConnection(URL,USERNAME,PASSWORD);
                    
                    selectActors=connection.prepareStatement("SELECT * FROM contacts");
                   
                }catch(SQLException e){
                e.printStackTrace();
                
                }
            }
            
            public ResultSet getActors()
            {
                try
                {
                    resultSet=selectActors.executeQuery();
                    
                }catch(SQLException e){
                 e.printStackTrace();   
                }
                return resultSet; 
            }
            }
        %>
        <%
            int result=0;
            Actor actor=new Actor();
            ResultSet actors=null;
            actors= actor.getActors();
            %>
            <div align="center">
            <form name="myForm" action="view.jsp" method="POST">
            <table border="0" align="center">
                <tbody>
                    <tr>
                        <td>Actor Name:</td>
                        <td><select name="actorvalue" style="width: 200px">
                               <% while (actors.next()) { %>
                               <option value="<%= actors.getInt("contact_id") %>"><%= actors.getString("first_name") %> <%= actors.getString("last_name") %></option>
                                <% } %>
                            </select></td>
                    </tr>
                </tbody>
            </table>
                            <input type="submit" value="Submit" name="submit" style="width:120px;height:30px;  border-color: purple; margin: 50px"/>
        </form>
                            <form name="GoBackFrom" action="index.jsp" method="POST">
                                <input type="submit" value="Go Back" name="goback" style="width:120px;height:30px;  border-color: purple; margin: 50px" />
                            </form>
                            </div>
                            
                           
    </body>
</html>
