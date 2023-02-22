<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Tacos</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
    <link rel="stylesheet" href="/css/main.css" />
    <!-- change to match your file/naming structure -->
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script>
    <!-- change to match your file/naming structure -->
  </head>
  <body>
    <div class="container">
      <div class="d-flex justify-content-between mt-5 align-items-center">
        <h1>Welcome, ${book.title}</h1>
        <a href="/books">Back to the shelves</a>
      </div>
      <div class="d-flex mt-5 ">
        <div class="m-1" style="color:#cd2b2b">
          <h5>${book.user.userName} </h5>
        </div>
        <div class="m-1">
          <h5>read</h5>
        </div>
        <div class="m-1" style="color:#9e00f8">
          <h5>${book.title}</h5>
        </div>
        <div class="m-1">
          <h5>by</h5>
        </div>
        <div class="m-1" style="color:#169f29">
          <h5>${book.author}.</h5>
        </div>
      </div>
      <div class="m-1">
        <h5>Here are ${book.user.userName}'s thoughts:</h5>
      </div>
      <div class="m-5" style="border-top:1px solid gray; border-bottom: 1px solid gray">
        <p>${book.thoughts}</p>
      </div>
    </div>
    
    
    <!-- <table class="table">
      <thead>
        <tr>
          <th>Id</th>
          <th>Title</th>
          <th>Author Name</th>
          <th>Posted By</th>
        </tr>
      </thead>
          <tr>
            <td>${book.id}</td>
            <td>${book.title}</td>
            <td>${book.author}</td>
            <td>${book.user.userName}</td>
          </tr>
      </tbody>
    </table>
    <a href="/books/new"><button class="btn btn-outline-danger">Create a Book</button></a> -->
  </body>
</html>
