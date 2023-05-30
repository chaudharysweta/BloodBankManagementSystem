<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Display Images</title>
</head>
<body>

<h1 style="color: red" align="center">Gallery</h1>

<div>
    <% 
        // Import required Java classes
        
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        
        // Define database connection details
        String jdbcURL = "jdbc:mysql://localhost:3306/bloodbank";
        String username = "root";
        String password = "sweta@12R";
        
        // Establish database connection
        try {
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, username, password);
            
            // Create SQL query to select images
            String sql = "SELECT * FROM image";
            statement = connection.prepareStatement(sql);
            
            // Execute the query
            resultSet = statement.executeQuery();
            
            // Iterate over the result set and display each image
            while (resultSet.next()) {
                String imageFileName = resultSet.getString("imageFileName");
    %>
                <img src="<%= imageFileName %>" alt="Image">
    <%
            }
            
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Close the database resources
            if (resultSet != null) {
                try {
                    resultSet.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (statement != null) {
                try {
                    statement.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (connection != null) {
                try {
                    connection.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
    %>
</div>

</body>
</html>
