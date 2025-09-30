package com.tca.student;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.tca.entities.Student;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@WebServlet("/display")
public class DisplayStudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		
		
		Connection con=null;
		PreparedStatement ps=null;
		ResultSet rs=null;
		
		final String DB_DRIVER="org.postgresql.Driver";
		final String DB_URL="jdbc:postgresql://ep-icy-glade-a85sobet-pooler.eastus2.azure.neon.tech/neondb";
		final String DB_USER="neondb_owner";
		final String DB_PASSWORD="npg_V2l5KiQgFrfd";
		
		String query="";
		
		String sbtn=request.getParameter("sbtn");
		
		String search=request.getParameter("srno");
		
		
		
		if(sbtn==null || search.isEmpty() || sbtn.equals("Refresh") )
		{
			query="SELECT * FROM student ORDER BY rno";
		}
		else
		{
			try
			{
				int rno=Integer.parseInt(search);			//Check Rno Other wise go to Catch
				query="SELECT * FROM student WHERE rno = ?";
			}
			catch(NumberFormatException ne)
			{
				
				try
				{
					double per=Double.parseDouble(search);	//Check Per Other wise go to Catch
					query="SELECT * FROM student WHERE per = ?";
				
				}
				catch(NumberFormatException ne2)
				{
					query="SELECT * FROM student WHERE name LIKE ?";
				}
			}
			
		}
		
		
		try
		{
			Class.forName(DB_DRIVER);
			con=DriverManager.getConnection(DB_URL,DB_USER,DB_PASSWORD);
			ps=con.prepareStatement(query);
			
			if (query.contains("WHERE rno = ?")) 
			{
			    ps.setInt(1, Integer.parseInt(search));
			   
			}
			else if(query.contains("WHERE per = ?"))
			{
				ps.setDouble(1,Double.parseDouble(search));
			}
			else if(query.contains("WHERE name LIKE ?"))
			{
				ps.setString(1, "%" + search + "%");

			}
			
			
			
			
			
			
			/*
		
		try {
				// name, rno or per
			String search=request.getParameter("srno");
			Class.forName(DB_DRIVER);
			con=DriverManager.getConnection(DB_URL,DB_USER,DB_PASSWORD);
			
			if(search!=null && !search.isEmpty() )
			{
				query = "SELECT * FROM student WHERE name LIKE ? OR CAST(rno AS TEXT) LIKE ? OR CAST(per AS TEXT) LIKE ? ORDER BY rno";
				
				
				ps=con.prepareStatement(query);
				
				
				ps.setString(1, "%" + search + "%");
				ps.setString(2, "%" + search + "%");
				ps.setString(3, "%" + search + "%");
			}
			else {
				query = "SELECT * FROM student ORDER BY rno";
				ps=con.prepareStatement(query);

			}
			*/
			
			rs=ps.executeQuery();
			
			
			/*
			
			
			while(rs.next())
			{
				out.println(rs.getInt(1)+"-->"+rs.getString(2)+"--->"+rs.getDouble(3)+"<br/>");
			}
			
			*/
			
			List<Student> L=new ArrayList<>();  // L --> [101..],[102..],[103.]
			
			while(rs.next())
			{
				/*
				int rno = rs.getInt("rno");
				String name = rs.getString("name");
				double per = rs.getDouble("per");
				
				L.add( new Student(rno,name,per) );
				
				*/
				
				L.add(new Student(rs.getInt("rno"),rs.getString("name"),rs.getDouble("per")));
			}
			
			/*
			out.println("Student Information <br/>");
			for(Student s: L)
			{
				out.println(s.getRno()+"-->"+s.getName()+"--->"+s.getPer()+"<br/>");

			}
			
			*/
			
			
			
			
			/* Redirecting the List of Student From View Layer */
			
			request.setAttribute("students", L);
			RequestDispatcher requstDispatcher=request.getRequestDispatcher("DisplayStudent.jsp");
			requstDispatcher.forward(request,response);
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		finally {
		   try {
			rs.close();
		   } catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		   }
		   try {
			con.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
		
	}

	

}
