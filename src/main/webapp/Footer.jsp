<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!-- Footer Section -->
<footer class="bg-dark text-white mt-5">
    <div class="container py-5">
        <div class="row">
            <!-- System Information -->
            <div class="col-lg-4 col-md-6 mb-4">
                <h5 class="d-flex align-items-center mb-3">
                    <i class="fas fa-users me-2"></i>
                    Student Management System
                </h5>
                <p class="text-light opacity-75">
                    A comprehensive solution for managing student records, 
                    tracking academic performance, and streamlining administrative tasks 
                    for educational institutions.
                </p>
                
            </div>

            <!-- Quick Links -->
            <div class="col-lg-3 col-md-6 mb-4">
                <h5 class="mb-3">Quick Links</h5>
                <ul class="list-unstyled">
                    <li class="mb-2">
                        <a href="./" class="text-light opacity-75 text-decoration-none hover-primary">
                            <i class="fas fa-home me-2"></i>Home
                        </a>
                    </li>
                    <li class="mb-2">
                        <a href="./aboutUs.jsp" class="text-light opacity-75 text-decoration-none hover-primary">
                            <i class="fas fa-info-circle me-2"></i>About Us
                        </a>
                    </li>
                    <li class="mb-2">
                        <a href="./addstudent" class="text-light opacity-75 text-decoration-none hover-primary">
                            <i class="fas fa-user-plus me-2"></i>Add Student
                        </a>
                    </li>
                    <li class="mb-2">
                        <a href="./display" class="text-light opacity-75 text-decoration-none hover-primary">
                            <i class="fas fa-eye me-2"></i>View Students
                        </a>
                    </li>
                </ul>
            </div>

            <!-- Student Operations -->
            <div class="col-lg-3 col-md-6 mb-4">
                <h5 class="mb-3">Student Operations</h5>
                <ul class="list-unstyled">
                    <li class="mb-2">
                        <a href="./addstudent" class="text-light opacity-75 text-decoration-none hover-primary">
                            <i class="fas fa-user-plus me-2"></i>Add New Student
                        </a>
                    </li>
                    <li class="mb-2">
                        <a href="./display" class="text-light opacity-75 text-decoration-none hover-primary">
                            <i class="fas fa-list me-2"></i>Display All Students
                        </a>
                    </li>
                    <li class="mb-2">
                        <a href="./update" class="text-light opacity-75 text-decoration-none hover-primary">
                            <i class="fas fa-edit me-2"></i>Update Student
                        </a>
                    </li>
                    <li class="mb-2">
                        <a href="./delete" class="text-light opacity-75 text-decoration-none hover-primary">
                            <i class="fas fa-trash me-2"></i>Delete Student
                        </a>
                    </li>
                </ul>
            </div>

            <!-- GitHub Section -->
            <div class="col-lg-2 col-md-6 mb-4">
                <h5 class="mb-3">Contribute</h5>
                <div class="d-flex flex-column">
                    <a href="https://github.com/aniketjumde/Student-Managment-System" class="text-light opacity-75 text-decoration-none hover-primary mb-3">
                        <i class="fab fa-github me-2"></i>GitHub Repo
                    </a>
                    <a href="#" class="text-light opacity-75 text-decoration-none hover-primary mb-3">
                        <i class="fas fa-code me-2"></i>Source Code
                    </a>
                    <a href="#" class="text-light opacity-75 text-decoration-none hover-primary">
                        <i class="fas fa-bug me-2"></i>Report Issue
                    </a>
                </div>
            </div>
        </div>

        <hr class="my-4 bg-light opacity-25">

        <!-- Copyright Section -->
        <div class="row align-items-center">
            <div class="col-md-6 text-center text-md-start">
                <p class="mb-0 text-light opacity-75">
                    &copy; 2025 Student Management System. All rights reserved.
                </p>
            </div>
            <div class="col-md-6 text-center text-md-end">
                <ul class="list-inline mb-0">
                    <li class="list-inline-item">
                        <a href="#" class="text-light opacity-75 text-decoration-none hover-primary">Privacy Policy</a>
                    </li>
                    <li class="list-inline-item mx-3">|</li>
                    <li class="list-inline-item">
                        <a href="#" class="text-light opacity-75 text-decoration-none hover-primary">Terms of Service</a>
                    </li>
                    <li class="list-inline-item mx-3">|</li>
                    <li class="list-inline-item">
                        <a href="#" class="text-light opacity-75 text-decoration-none hover-primary">Help Center</a>
                    </li>
                </ul>
            </div>
        </div>
    </div>

    <!-- Back to Top Button -->
    <div class="position-fixed bottom-0 end-0 m-4">
        <button id="backToTop" class="btn btn-primary rounded-circle shadow-lg" 
                style="width: 50px; height: 50px; display: none;" 
                title="Back to Top">
            <i class="fas fa-arrow-up"></i>
        </button>
    </div>
</footer>

<style>
/* Footer Specific Styles */
footer {
    background: linear-gradient(135deg, #1a1a1a 0%, #2d2d2d 100%) !important;
}

.hover-primary {
    transition: all 0.3s ease;
}

.hover-primary:hover {
    color: #0d6efd !important;
    transform: translateX(5px);
    text-decoration: none;
}

.social-links a {
    transition: all 0.3s ease;
    display: inline-block;
}

.social-links a:hover {
    color: #0d6efd !important;
    transform: translateY(-3px);
}

#backToTop {
    transition: all 0.3s ease;
    z-index: 1000;
}

#backToTop:hover {
    transform: translateY(-3px);
    box-shadow: 0 5px 15px rgba(13, 110, 253, 0.4);
}
</style>

<script>
// Back to Top functionality
document.addEventListener('DOMContentLoaded', function() {
    const backToTopButton = document.getElementById('backToTop');
    
    // Show/hide button based on scroll position
    window.addEventListener('scroll', function() {
        if (window.pageYOffset > 300) {
            backToTopButton.style.display = 'block';
        } else {
            backToTopButton.style.display = 'none';
        }
    });
    
    // Smooth scroll to top when clicked
    backToTopButton.addEventListener('click', function() {
        window.scrollTo({
            top: 0,
            behavior: 'smooth'
        });
    });
});
</script>