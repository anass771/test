<%-- 
    Document   : removeStudent
    Created on : 2 juil. 2021, 10:53:05
    Author     : anass.daou
--%>

   <%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%
             
            Connection con;     
 
    
   	  
                                String regno = request.getParameter("id");
   			
   	   			
   	   			 Class.forName("com.mysql.jdbc.Driver");
                                 con = DriverManager.getConnection("jdbc:mysql://localhost/ecole","root","");
   	   			 String query = "delete from  student where regno = ?";
   	   	
   	   			PreparedStatement pst = con.prepareStatement(query);
   	   			
   	   	
   	   			pst.setString(1, regno);
   	   			pst.executeUpdate();
	
    %>   
    
    <script>
        
          window.location.replace("viewStudent.jsp");       
        
    </script>
