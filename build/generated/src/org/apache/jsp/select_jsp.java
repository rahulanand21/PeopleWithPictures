package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;
import java.sql.*;

public final class select_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


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
        
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
Class.forName("com.mysql.jdbc.Driver"); 
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Selecting data from a DB</title>\n");
      out.write("    </head>\n");
      out.write("    <body background=\"C:\\Users\\rahulanand21\\Downloads\\film-background.jpg\">\n");
      out.write("        <h1 style=\"text-align: center;margin-bottom: 100px\">Selecting An Actor</h1>\n");
      out.write("        ");
      out.write("\n");
      out.write("        ");

            int result=0;
            Actor actor=new Actor();
            ResultSet actors=null;
            actors= actor.getActors();
            
      out.write("\n");
      out.write("            <div align=\"center\">\n");
      out.write("            <form name=\"myForm\" action=\"view.jsp\" method=\"POST\">\n");
      out.write("            <table border=\"0\" align=\"center\">\n");
      out.write("                <tbody>\n");
      out.write("                    <tr>\n");
      out.write("                        <td>Actor Name:</td>\n");
      out.write("                        <td><select name=\"actorvalue\" style=\"width: 200px\">\n");
      out.write("                               ");
 while (actors.next()) { 
      out.write("\n");
      out.write("                               <option value=\"");
      out.print( actors.getInt("contact_id") );
      out.write('"');
      out.write('>');
      out.print( actors.getString("first_name") );
      out.write(' ');
      out.print( actors.getString("last_name") );
      out.write("</option>\n");
      out.write("                                ");
 } 
      out.write("\n");
      out.write("                            </select></td>\n");
      out.write("                    </tr>\n");
      out.write("                </tbody>\n");
      out.write("            </table>\n");
      out.write("                            <input type=\"submit\" value=\"Submit\" name=\"submit\" style=\"width:120px;height:30px;  border-color: purple; margin: 50px\"/>\n");
      out.write("        </form>\n");
      out.write("                            <form name=\"GoBackFrom\" action=\"index.jsp\" method=\"POST\">\n");
      out.write("                                <input type=\"submit\" value=\"Go Back\" name=\"goback\" style=\"width:120px;height:30px;  border-color: purple; margin: 50px\" />\n");
      out.write("                            </form>\n");
      out.write("                            </div>\n");
      out.write("                            \n");
      out.write("                           \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
