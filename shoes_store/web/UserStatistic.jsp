<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Stock&Stock</title>
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/manager.css" rel="stylesheet" type="text/css"/>
        <style>
            img{
                width: 200px;
                height: 120px;
            }
        </style>
    </head>
    <body>

        <div class="container">
            <div class="table-wrapper">
                <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">
                <symbol id="check-circle-fill" fill="currentColor" viewBox="0 0 16 16">
                    <path d="M16 8A8 8 0 1 1 0 8a8 8 0 0 1 16 0zm-3.97-3.03a.75.75 0 0 0-1.08.022L7.477 9.417 5.384 7.323a.75.75 0 0 0-1.06 1.06L6.97 11.03a.75.75 0 0 0 1.079-.02l3.992-4.99a.75.75 0 0 0-.01-1.05z"/>
                </symbol>
                <symbol id="info-fill" fill="currentColor" viewBox="0 0 16 16">
                    <path d="M8 16A8 8 0 1 0 8 0a8 8 0 0 0 0 16zm.93-9.412-1 4.705c-.07.34.029.533.304.533.194 0 .487-.07.686-.246l-.088.416c-.287.346-.92.598-1.465.598-.703 0-1.002-.422-.808-1.319l.738-3.468c.064-.293.006-.399-.287-.47l-.451-.081.082-.381 2.29-.287zM8 5.5a1 1 0 1 1 0-2 1 1 0 0 1 0 2z"/>
                </symbol>
                <symbol id="exclamation-triangle-fill" fill="currentColor" viewBox="0 0 16 16">
                    <path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
                </symbol>
                </svg>
                <c:if test="${not empty message}">
                    <div class="alert alert-warning d-flex align-items-center" role="alert">
                        <svg class="bi flex-shrink-0 me-2" width="24" height="24" role="img" aria-label="Warning:"><use xlink:href="#exclamation-triangle-fill"/></svg>
                        <div>
                            ${message}
                        </div>
                    </div>
                </c:if>
                <!--                <div class="table-title">
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <h2>Manage <b>Account</b></h2>
                                        </div>
                                        <div class="col-sm-6">
                                            <a href="#addEmployeeModal"  class="btn btn-success" data-toggle="modal"><i class="material-icons">&#xE147;</i> <span>New Account</span></a>
                                            <a href="#deleteEmployeeModal" class="btn btn-danger" data-toggle="modal"><i class="material-icons">&#xE15C;</i> <span>Delete</span></a>						
                                        </div>
                                    </div>
                                </div>-->
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-8">
                            <a href="loadProductAdmin?action=loadUserStatistic" style="text-decoration: none; color: inherit;"><h2>User <b>Statistic</b></h2></a>
                        </div>

                        <div class="col-sm-4">
                            <div class="col">
                                <form action="search" method="post">
                                    <input type="hidden" name="action" value="searchUserStatistic">
                                    <div class="search-box" style="display: flex; justify-content: center; align-items: center;">
                                        <input type="date" class="form-control" style="margin-right: 15px;" name="start" id="start-search" value="${start}" required>
                                        <input type="date" class="form-control" style="margin-right: 5px;" name="end" id="end-search" value="${end}" required>
                                        <button type="submit" class="btn btn-primary">
                                            <i class="material-icons">&#xE8B6;</i>
                                        </button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>No.</th>
                            <th>ID</th>
                            <th>Name</th>
                            <th>Email</th>
                            <th>Phone</th>
                            <th>Spending</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:set var="totalSpending" value="0" />
                        <c:forEach items="${listUserSpending}" var="o" varStatus="loop">
                            <tr>
                                <td>${loop.index + 1}</td>
                                <td>${o.user.userId}</td>
                                <td>${o.user.fullName}</td>
                                <td>${o.user.email}</td>
                                <td>${o.user.phoneNumber}</td>
                                <td>$${o.spending}</td>
                            </tr>
                            <c:set var="totalSpending" value="${totalSpending + o.spending}" />
                        </c:forEach>
                        <tr>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td></td>
                            <td>Total Spending:</td>
                            <td>$<c:out value="${totalSpending}" /></td>
                        </tr>
                    </tbody>
                </table>
                <div class="clearfix">
                    <div class="hint-text">Showing <b>${userSpendingCount}</b> entries</div>
                    <ul class="pagination">
                        <%--<c:if test="${index > 1}">
                            <li class="page-item"><a href="loadUserAdmin?action=loadUser&pageNumber=${index-1}">Previous</a></li>
                            </c:if>
                            <c:forEach begin="1" end="${endPage}" var="i">
                            <li class="page-item ${index==i?"active":""}"><a href="loadUserAdmin?action=loadUser&pageNumber=${i}" class="page-link">${i}</a></li>
                            </c:forEach>
                            <c:if test="${index < endPage}">
                            <li class="page-item"><a href="loadUserAdmin?action=loadUser&pageNumber=${index+1}" class="page-link">Next</a></li>
                            </c:if>--%>
                    </ul>
                </div>
            </div>
            <a href="home?action=home"><button type="button" class="btn btn-primary">Back to home</button></a>
        </div>
        <script src="js/manager.js" type="text/javascript"></script>
    </body>
</html>