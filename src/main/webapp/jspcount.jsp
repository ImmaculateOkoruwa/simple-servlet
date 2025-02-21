<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.concurrent.atomic.AtomicInteger" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>JSP Example (jspcount.jsp)</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      line-height: 1.6;
      max-width: 600px;
      margin: 20px auto;
      padding: 0 20px;
      background-color: #f9f9f9;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    }
    h1 {
      color: #333;
      border-bottom: 2px solid #333;
      padding-bottom: 5px;
    }
    p {
      color: #666;
    }
  </style>
</head>
<body>
  <h1>JSP Example (jspcount.jsp)</h1>
  <%!
    // Using AtomicInteger to ensure thread safety for the counter
    private static AtomicInteger accesses = new AtomicInteger(0);
  %>
  <%
    int count = accesses.incrementAndGet();
  %>
  <p>Number of times this JSP has been accessed: <%= count %></p>
</body>
</html>
