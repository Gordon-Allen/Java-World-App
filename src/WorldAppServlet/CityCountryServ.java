package WorldAppServlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CityCountryServ
 */
@WebServlet("/CityCountryServ")
public class CityCountryServ extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	  public void service(HttpServletRequest request,  HttpServletResponse response)  throws IOException, ServletException
	  {
		  response.setContentType("text/html");
		  PrintWriter out = response.getWriter();
		  out.println("<html>");
		  out.println("<head><title>City/Country QueryServlet</title></head>");
		  out.println("<body>");
		  out.println("<h1>The Country and City With the ID of 3 are:</h1>");
		  out.println("</body></html>");
		  
		  Connection con = null;
		  Statement stmt = null;
		  ResultSet rs = null;
		  
		  try
		  {
			  Class.forName("com.mysql.jdbc.Driver");
			  con =DriverManager.getConnection("jdbc:mysql://database-7.ctiembqzvsd8.us-east-1.rds.amazonaws.com:3306/WorldApp?serverTimezone=EST5EDT","admin","admin123");
			  
			  
			  stmt = con.createStatement();
			  rs = stmt.executeQuery("SELECT City.city_id, City.city_name, Country.country_id, Country.country_name, Country.population FROM City LEFT JOIN Country USING (city_id) WHERE city_id = 3");
			  
			  out.println("The City with the ID of 3 is:");
			  out.print("<br>");
			  
			  // 	displaying records
			  while(rs.next())
			  {
				  out.println("<h1>City</h1>");
				  out.println("<em>ID:</em> " + rs.getInt("city_id"));
				  out.print("<br>");
				  out.println("<em>City Name:</em> " + rs.getString("city_name"));
				  out.print("<br>");
				  out.print("<br>");
				  out.println("<h1>Country</h1>");
				  out.println("<em>ID:</em> " + rs.getInt("country_id"));
				  out.print("<br>");
				  out.println("<em>Country Name:</em> " + rs.getString("country_name"));
				  out.print("<br>");
				  out.println("<em>Country Population:</em> " + rs.getInt("population"));
			  }
		  }
		  catch (SQLException e)
		  {
			  throw new ServletException("Servlet Could not display records.", e);
		  }
		  catch (ClassNotFoundException e) {
			  throw new ServletException("JDBC Driver not found.", e);
		  }
		  finally
		  {
			  try
			  {
				  if(rs != null)
				  {
					  rs.close();
					  rs = null;
				  }
				  if(stmt != null)
				  {
					  stmt.close();
					  stmt = null;
				  }
				  if(con != null)
				  {
					  con.close();
					  con = null;
				  }
			  }
			  catch (SQLException e)
			  {
				  
			  }
		  }
		  out.close();
		}
	 }