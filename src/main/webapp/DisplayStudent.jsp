<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.*, com.tca.entities.*" %>
<%@include file="Header.jsp" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Display Students - Student Management System</title>
</head>
<body>

<div class="main-content">
    <div class="container">
        <!-- Page Header -->
        <div class="row mb-4">
            <div class="col-12">
                <div class="card border-0 bg-transparent">
                    <div class="card-body text-center py-4">
                        <i class="fas fa-eye text-primary mb-3" style="font-size: 3rem;"></i>
                        <h1 class="display-5 fw-bold text-dark mb-2">Student Information</h1>
                        <p class="lead text-muted">View and search student records</p>
                    </div>
                </div>
            </div>
        </div>

        <!-- Search Section -->
        <div class="row mb-4">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <form class="row g-3 align-items-end" role="search" method="GET" action="./display">
                            <div class="col-md-6">
                                <label class="form-label fw-semibold">
                                    <i class="fas fa-search me-2"></i>Search by Roll Number
                                </label>
                                <input class="form-control" type="search" name="srno" 
                                       placeholder="Enter roll number to search...">
                            </div>
                            <div class="col-md-6">
                                <div class="d-flex gap-2">
                                    <button class="btn btn-success flex-fill" type="submit" name="sbtn" value="Search">
                                        <i class="fas fa-search me-2"></i>Search
                                    </button>
                                    <button class="btn btn-outline-secondary flex-fill" type="submit" name="sbtn" value="Refresh">
                                        <i class="fas fa-sync me-2"></i>Refresh
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>

        <!-- Table Section -->
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-body p-0">
                        <div class="table-responsive">
                            <table class="table table-hover mb-0">
                                <thead>
                                    <tr>
                                        <th class="px-4 py-3">
                                            <i class="fas fa-hashtag me-2"></i>Roll Number
                                        </th>
                                        <th class="px-4 py-3">
                                            <i class="fas fa-user me-2"></i>Student Name
                                        </th>
                                        <th class="px-4 py-3">
                                            <i class="fas fa-percent me-2"></i>Percentage
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                    List<Student> L = (List<Student>) request.getAttribute("students");
                                    
                                    if(L == null || L.isEmpty()) {
                                    %>
                                        <tr>
                                            <td colspan="3" class="text-center py-5">
                                                <div class="d-flex flex-column align-items-center">
                                                    <i class="fas fa-exclamation-triangle text-warning mb-3" style="font-size: 3rem;"></i>
                                                    <h5 class="text-muted">No Data Found!</h5>
                                                    <p class="text-muted mb-3">There are no student records to display.</p>
                                                    <a href="./addstudent" class="btn btn-primary">
                                                        <i class="fas fa-user-plus me-2"></i>Add First Student
                                                    </a>
                                                </div>
                                            </td>
                                        </tr>
                                    <%
                                    } else {
                                        for(Student s : L) {
                                    %>
                                        <tr class="align-middle">
                                            <td class="px-4 py-3">
                                                <span class="badge bg-primary fs-6"><%= s.getRno() %></span>
                                            </td>
                                            <td class="px-4 py-3">
                                                <div class="d-flex align-items-center">
                                                    <div class="bg-light rounded-circle d-flex align-items-center justify-content-center me-3" 
                                                         style="width: 40px; height: 40px;">
                                                        <i class="fas fa-user text-muted"></i>
                                                    </div>
                                                    <span class="fw-semibold"><%= s.getName() %></span>
                                                </div>
                                            </td>
                                            <td class="px-4 py-3">
                                                <div class="d-flex align-items-center">
                                                    <div class="progress me-3" style="width: 100px; height: 8px;">
                                                        <div class="progress-bar bg-success" 
                                                             style="width: <%= s.getPer() %>%"></div>
                                                    </div>
                                                    <span class="fw-bold text-success"><%= s.getPer() %>%</span>
                                                </div>
                                            </td>
                                        </tr>
                                    <%
                                        }
                                    }
                                    %>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Quick Actions -->
        <% if(L != null && !L.isEmpty()) { %>
        <div class="row mt-4">
            <div class="col-12 text-center">
                <div class="d-flex justify-content-center gap-3 flex-wrap">
                    <a href="./addstudent" class="btn btn-primary">
                        <i class="fas fa-user-plus me-2"></i>Add New Student
                    </a>
                    <a href="./update" class="btn btn-warning">
                        <i class="fas fa-edit me-2"></i>Update Records
                    </a>
                    <a href="./delete" class="btn btn-danger">
                        <i class="fas fa-trash me-2"></i>Delete Records
                    </a>
                </div>
            </div>
        </div>
        <% } %>
    </div>
</div>

</body>
</html>

<%@include file="Footer.jsp" %>