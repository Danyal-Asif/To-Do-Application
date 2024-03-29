<%@ page language="java" contentType="text/html; charset=UTF-8"
 pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
        <html>

        <head>
            <title>TO DO Application</title>
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        </head>

        <body>

            <header>
                <nav class="navbar navbar-expand-md navbar-dark" style="background-color: tomato">
                    <div>
                        <a href="https://www.javaguides.net" class="navbar-brand"> TO DO Application </a>
                    </div>

                    <ul class="navbar-nav">
                        <li><a href="<%=request.getContextPath()%>/list" class="nav-link">Tasks</a></li>
                    </ul>
                </nav>
            </header>
            <br>
            <div class="container col-md-5">
                <div class="card">
                    <div class="card-body">
                        <c:if test="${task != null}">
                            <form action="update" method="post">
                        </c:if>
                        <c:if test="${task == null}">
                            <form action="insert" method="post">
                        </c:if>

                        <caption>
                            <h2>
                                <c:if test="${task != null}">
                                    Edit task
                                </c:if>
                                <c:if test="${task == null}">
                                    Add New task
                                </c:if>
                            </h2>
                        </caption>

                        <c:if test="${task != null}">
                            <input type="hidden" name="id" value="<c:out value='${task.id}' />" />
                        </c:if>

                        <fieldset class="form-group">
                            <label>ID</label> <input type="text" value="<c:out value='${task.id}' />" class="form-control" name="id" required="required">
                        </fieldset>

                        <fieldset class="form-group">
                            <label>Title</label> <input type="text" value="<c:out value='${task.title}' />" class="form-control" name="title">
                        </fieldset>

                        <fieldset class="form-group">
                            <label>Description</label> <input type="text" value="<c:out value='${task.description}' />" class="form-control" name="description">
                        </fieldset>
                        
                        <fieldset class="form-group">
                            <label>Due Date</label> <input type="text" value="<c:out value='${task.due_date}' />" class="form-control" name="due_date">
                        </fieldset>

                        <fieldset class="form-group">
				        	<label>Priority</label>
				        		<select class="form-control" name="priority">
				            		<option value="LOW">LOW</option>
				            		<option value="MEDIUM">MEDIUM</option>
				            		<option value="HIGH">HIGH</option>
				        		</select>
				    	</fieldset>
				
				   		<fieldset class="form-group">
				        	<label>Status</label>
				        		<select class="form-control" name="status">
				            		<option value="TO_DO">TO DO</option>
				            		<option value="IN_PROGRESS">IN PROGRESS</option>
				            		<option value="COMPLETED">COMPLETED</option>
				        		</select>
				    	</fieldset>

                        <button type="submit" class="btn btn-success">Save</button>
                        </form>
                    </div>
                </div>
            </div>
        </body>

        </html>