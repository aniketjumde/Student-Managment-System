<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="Header.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Add Student - Student Management System</title>
</head>
<body>

<div class="main-content">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-6 col-md-8">
                <div class="card shadow-lg border-0">
                    <div class="card-header bg-primary text-white text-center py-4">
                        <i class="fas fa-user-plus mb-2" style="font-size: 3rem;"></i>
                        <h2 class="mb-0 fw-bold">Student Registration</h2>
                        <p class="mb-0 opacity-75">Add a new student to the system</p>
                    </div>
                    
                    <div class="card-body p-5">
                        <form method="POST" action="./addstudent">
                            <div class="mb-4">
                                <label class="form-label fw-semibold d-flex align-items-center">
                                    <i class="fas fa-hashtag me-2"></i>
                                    Roll Number
                                </label>
                                <input type="text" name="rno" class="form-control form-control-lg" 
                                       placeholder="Enter roll number" required>
                            </div>

                            <div class="mb-4">
                                <label class="form-label fw-semibold d-flex align-items-center">
                                    <i class="fas fa-user me-2"></i>
                                    Full Name
                                </label>
                                <input type="text" name="name" class="form-control form-control-lg" 
                                       placeholder="Enter student name" required>
                            </div>

                            <div class="mb-4">
                                <label class="form-label fw-semibold d-flex align-items-center">
                                    <i class="fas fa-percent me-2"></i>
                                    Percentage
                                </label>
                                <input type="text" name="per" class="form-control form-control-lg" 
                                       placeholder="Enter percentage (e.g., 85.5)" required>
                            </div>

                            <div class="d-grid">
                                <button type="submit" class="btn btn-primary btn-lg py-3">
                                    <i class="fas fa-save me-2"></i>
                                    Save Student Record
                                </button>
                            </div>
                        </form>

                        <!-- Message Display -->
						   <% if(request.getAttribute("msg") != null) { %>
						    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
						    <script>
						        <% 
						            String msg = (String) request.getAttribute("msg");
						            String icon = "info"; // default
						            String title = ""; 
						            String text = "";
						
						            if("Success".equalsIgnoreCase(msg)) {
						                icon = "success";
						                title = "Registration Successful!";
						                text = "Student has been added successfully.";
						            } else if("Failed".equalsIgnoreCase(msg)) {
						                icon = "error";
						                title = "Registration Failed!";
						                text = "Please try again.";
						            }
						        %>
						
						        Swal.fire({
						            icon: '<%= icon %>',
						            title: '<%= title %>',
						            text: '<%= text %>',
						            showConfirmButton: true,
						            timer: 3000
						        });
						    </script>
						<% } %>

                    </div>
                </div>
                
                <!-- Quick Actions -->
                <div class="text-center mt-4">
                    <div class="d-flex justify-content-center gap-3 flex-wrap">
                        <a href="./display" class="btn btn-outline-primary">
                            <i class="fas fa-eye me-2"></i>View All Students
                        </a>
                        <a href="./" class="btn btn-outline-secondary">
                            <i class="fas fa-home me-2"></i>Back to Home
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
</html>

<%@include file="Footer.jsp" %>