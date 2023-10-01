<%@ page import="Project.ConnectionProvider" %>
<%@ page import="java.sql.*" %>
<%
String name = request.getParameter("name");
String address = request.getParameter("address");
String mobilenumber = request.getParameter("mobilenumber");

try {
    Connection con = ConnectionProvider.getCon();
    PreparedStatement ps = con.prepareStatement("INSERT INTO bloodbankdetails (name, address, mobilenumber) VALUES (?, ?, ?)");

    ps.setString(1, name);
    ps.setString(2, address);
    ps.setString(3, mobilenumber);

    int rowsAffected = ps.executeUpdate();
    if (rowsAffected > 0) {
        response.sendRedirect("addBloodBank.jsp?msg=valid");
    } else {
        response.sendRedirect("addBloodBank.jsp?msg=invalid");
    }
} catch (Exception e) {
    e.printStackTrace();
    response.sendRedirect("addBloodBank.jsp?msg=invalid");
}
%>
