<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String filter_name=request.getParameter("filter_name");
String filter_amount=request.getParameter("filter_amount");
String filter_number=request.getParameter("filter_number");
String filter_title=request.getParameter("filter_title");
String filter_meow=request.getParameter("filter_meow");
String filter_date=request.getParameter("filter_date");
String selection=request.getParameter("selection");

try
{
Class.forName("com.mysql.cj.jdbc.Driver");
Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/filterdb", "root", "");
Statement st=conn.createStatement();

if(filter_name != null && filter_amount != null && filter_number != null && selection != null){
int i=st.executeUpdate("insert into filter(filter_name,filter_amount,filter_number,selection)values('"+filter_name+"','"+filter_amount+"','"+filter_number+"','"+selection+"')");
out.println("Data is successfully inserted!");
}

else if (filter_name != null && filter_amount != null && filter_number != null && selection != null && filter_title != null && filter_meow != null){
    int i=st.executeUpdate("insert into filter(filter_name,filter_amount,filter_number,selection,filter_title,filter_meow)values('"+filter_name+"','"+filter_amount+"','"+filter_number+"','"+selection+"','"+filter_title+"','"+filter_meow+"')");
out.println("Data is successfully inserted!");
}

else if (filter_name != null && filter_amount != null && filter_number != null && selection != null && filter_title != null && filter_meow != null && filter_date != null){
    int i=st.executeUpdate("insert into filter(filter_name,filter_amount,filter_number,filter_title,filter_meow,filter_date,selection)values('"+filter_name+"','"+filter_amount+"','"+filter_number+"','"+filter_title+"','"+filter_meow+"','"+filter_date+"','"+selection+"')");
out.println("Data is successfully inserted!");
}
else {
out.println("Something went wrong!");
}

}
catch(Exception e)
{
System.out.print(e);
e.printStackTrace();
}
%>

<!DOCTYPE html>
<html>
    <head>
    <a href="index.jsp">Go back to home page</a>
    </head>
</html>