<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="Header.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Management System - Home</title>
</head>
<body>

<div class="main-content">
    <div class="container">
        <!-- Hero Section -->
        <div class="row mb-5">
            <div class="col-12">
                <div class="text-center py-5">
                    <div class="mb-4">
                        <i class="fas fa-users text-primary mb-3" style="font-size: 5rem;"></i>
                    </div>
                    <h1 class="display-4 fw-bold text-dark mb-3">
                        Student Management System
                    </h1>
                    <p class="lead text-muted mb-4">
                        Efficiently manage student records with our comprehensive and user-friendly system
                    </p>
                    <div class="d-flex justify-content-center gap-3 flex-wrap">
                        <a href="./addstudent" class="btn btn-primary btn-lg px-4">
                            <i class="fas fa-user-plus me-2"></i>Add New Student
                        </a>
                        <a href="./display" class="btn btn-outline-primary btn-lg px-4">
                            <i class="fas fa-eye me-2"></i>View All Students
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Feature Cards -->
        <div class="row g-4 mb-5">
            <div class="col-lg-3 col-md-6">
                <div class="card h-100 text-center p-4">
                    <div class="card-body">
                        <i class="fas fa-user-plus text-success mb-3" style="font-size: 3rem;"></i>
                        <h5 class="card-title">Add Students</h5>
                        <p class="card-text text-muted">
                            Register new students with roll number, name, and percentage
                        </p>
                        <a href="./addstudent" class="btn btn-success btn-sm">
                            Get Started
                        </a>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-md-6">
                <div class="card h-100 text-center p-4">
                    <div class="card-body">
                        <i class="fas fa-eye text-info mb-3" style="font-size: 3rem;"></i>
                        <h5 class="card-title">View Records</h5>
                        <p class="card-text text-muted">
                            Display and search through all student records easily
                        </p>
                        <a href="./display" class="btn btn-info btn-sm">
                            View All
                        </a>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-md-6">
                <div class="card h-100 text-center p-4">
                    <div class="card-body">
                        <i class="fas fa-edit text-warning mb-3" style="font-size: 3rem;"></i>
                        <h5 class="card-title">Update Info</h5>
                        <p class="card-text text-muted">
                            Modify existing student information with ease
                        </p>
                        <a href="./update" class="btn btn-warning btn-sm">
                            Update
                        </a>
                    </div>
                </div>
            </div>

            <div class="col-lg-3 col-md-6">
                <div class="card h-100 text-center p-4">
                    <div class="card-body">
                        <i class="fas fa-trash text-danger mb-3" style="font-size: 3rem;"></i>
                        <h5 class="card-title">Remove Records</h5>
                        <p class="card-text text-muted">
                            Safely delete student records when needed
                        </p>
                        <a href="./delete" class="btn btn-danger btn-sm">
                            Manage
                        </a>
                    </div>
                </div>
            </div>
        </div>

        <!-- Stats Section -->
        <div class="row">
            <div class="col-12">
                <div class="card bg-primary text-white">
                    <div class="card-body py-4">
                        <div class="row text-center">
                            <div class="col-md-4">
                                <i class="fas fa-chart-line mb-2" style="font-size: 2.5rem;"></i>
                                <h4>Efficient</h4>
                                <p class="mb-0">Streamlined student data management</p>
                            </div>
                            <div class="col-md-4">
                                <i class="fas fa-shield-alt mb-2" style="font-size: 2.5rem;"></i>
                                <h4>Reliable</h4>
                                <p class="mb-0">Secure and dependable system</p>
                            </div>
                            <div class="col-md-4">
                                <i class="fas fa-heart mb-2" style="font-size: 2.5rem;"></i>
                                <h4>User-Friendly</h4>
                                <p class="mb-0">Intuitive interface for all users</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>

<%@include file="Footer.jsp" %>