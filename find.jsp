<%@ page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Product Search Results</title>
    <style>
        .search-results {
            display: none;
        }
    </style>
    <script>
        function showResults() {
            document.getElementById('searchResults').style.display = 'block';
        }
    </script>
</head>
<body>

<h2>Product Search</h2>
<form onsubmit="showResults(); return false;">
    <label for="searchTerm">Search Term:</label>
    <input type="text" id="searchTerm" name="searchTerm">
    <button type="submit">Search</button>
</form>

<%
    if (request.getParameter("searchTerm") != null) {
        Class.forName("com.mysql.cj.jdbc.Driver");
        String url = "jdbc:mysql://localhost/?serverTimezone=UTC";
        Connection con = DriverManager.getConnection(url, "root", "");
        con.setAutoCommit(true);
        con.createStatement().execute("USE webDB");

        // Retrieve search term from the request parameter
        String searchTerm = request.getParameter("searchTerm");

        // Use PreparedStatement to prevent SQL injection
        String searchQuery = "SELECT * FROM product WHERE product_name LIKE ?";
        try (PreparedStatement pstmt = con.prepareStatement(searchQuery)) {
            pstmt.setString(1, "%" + searchTerm + "%");
            ResultSet resultSet = pstmt.executeQuery();

            // Display search results
            out.println("<div id='searchResults' class='search-results'>");
            out.println("<h3>Search Results for '" + searchTerm + "':</h3>");
            out.println("<table border='1'>");
            out.println("<tr><th>Product ID</th><th>Product Name</th><th>Amount</th><th>Category</th><th>Price</th><th>Product Description</th><th>Image Path</th></tr>");

            while (resultSet.next()) {
                String productId = resultSet.getString("product_id");
                String productName = resultSet.getString("product_name");
                int amount = resultSet.getInt("amount");
                String category = resultSet.getString("category");
                int price = resultSet.getInt("price");
                String productDescription = resultSet.getString("product_describe");
                String imagePath = resultSet.getString("image_path");

                out.println("<tr><td>" + productId + "</td><td>" + productName + "</td><td>" + amount + "</td><td>" + category + "</td><td>" + price + "</td><td>" + productDescription + "</td><td>" + imagePath + "</td></tr>");
            }

            out.println("</table>");
            out.println("</div>");
        } catch (SQLException e) {
            e.printStackTrace(); // Handle SQLException appropriately in a production environment
        } finally {
            con.close();
        }
    }
%>

</body>
</html>
