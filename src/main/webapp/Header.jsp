<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Management System</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">

<style>
/* Custom CSS for enhanced UI */
.navbar-brand {
    font-weight: 600;
    font-size: 1.3rem;
}
.navbar-nav .nav-link {
    font-weight: 500;
    transition: all 0.3s ease;
}
.navbar-nav .nav-link:hover {
    color: #0d6efd !important;
    transform: translateY(-1px);
}
.navbar-nav .nav-link.active {
    color: #0d6efd !important;
}
.dropdown-menu {
    border: none;
    box-shadow: 0 10px 25px rgba(0,0,0,0.1);
}
.dropdown-item {
    padding: 0.75rem 1rem;
    transition: all 0.3s ease;
}
.dropdown-item:hover {
    background-color: #f8f9fa;
    transform: translateX(5px);
}
.main-content {
    padding-top: 80px;
    min-height: 100vh;
    background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
}
.card {
    border: none;
    box-shadow: 0 10px 30px rgba(0,0,0,0.1);
    border-radius: 15px;
}
.btn {
    border-radius: 8px;
    font-weight: 500;
    transition: all 0.3s ease;
}
.btn:hover {
    transform: translateY(-2px);
    box-shadow: 0 5px 15px rgba(0,0,0,0.2);
}
.table {
    border-radius: 10px;
    overflow: hidden;
}
.table thead th {
    background: linear-gradient(45deg, #667eea 0%, #764ba2 100%);
    color: white;
    font-weight: 600;
    border: none;
}
.table tbody tr:hover {
    background-color: #f8f9fa;
    transform: scale(1.01);
    transition: all 0.3s ease;
}
.form-control {
    border-radius: 8px;
    border: 2px solid #e9ecef;
    transition: all 0.3s ease;
}
.form-control:focus {
    border-color: #667eea;
    box-shadow: 0 0 0 0.25rem rgba(102, 126, 234, 0.25);
}
.modal-content {
    border: none;
    border-radius: 15px;
    box-shadow: 0 20px 40px rgba(0,0,0,0.1);
}
.modal-header {
    background: linear-gradient(45deg, #667eea 0%, #764ba2 100%);
    border-radius: 15px 15px 0 0;
}
</style>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top shadow-sm">
  <div class="container-fluid">
    <a class="navbar-brand d-flex align-items-center" href="./">
        <i class="fas fa-users me-2"></i>
        Student Management System
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar" aria-controls="offcanvasDarkNavbar" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    
    <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasDarkNavbar" aria-labelledby="offcanvasDarkNavbarLabel">
      <div class="offcanvas-header">
        <h5 class="offcanvas-title d-flex align-items-center" id="offcanvasDarkNavbarLabel">
            <i class="fas fa-users me-2"></i>
            Student Management System
        </h5>
        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
      </div>
      
      <div class="offcanvas-body">
        <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
          <li class="nav-item">
            <a class="nav-link" href="./">
                <i class="fas fa-home me-2"></i>Home
            </a>
          </li>
          
          <li class="nav-item">
            <a class="nav-link" href="./aboutUs.jsp">
                <i class="fas fa-info-circle me-2"></i>About Us
            </a>
          </li>
          
          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle d-flex align-items-center" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">
              <i class="fas fa-users me-2"></i>Student Operations
            </a>
            <ul class="dropdown-menu dropdown-menu-dark">
              <li>
                <a class="dropdown-item d-flex align-items-center" href="./addstudent">
                    <i class="fas fa-user-plus me-2"></i>Add Student
                </a>
              </li>
              <li>
                <a class="dropdown-item d-flex align-items-center" href="./display">
                    <i class="fas fa-eye me-2"></i>Display Students
                </a>
              </li>
              <li>
                <a class="dropdown-item d-flex align-items-center" href="./update">
                    <i class="fas fa-edit me-2"></i>Update Student
                </a>
              </li>
              <li>
                <a class="dropdown-item d-flex align-items-center" href="./delete">
                    <i class="fas fa-trash me-2"></i>Delete Student
                </a>
              </li>
            </ul>
          </li>
        </ul>
      </div>
    </div>
  </div>
</nav>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
</body>
</html>


