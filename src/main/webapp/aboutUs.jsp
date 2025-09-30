<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="Header.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>About Us - Student Management System</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" rel="stylesheet">
    <style>
        /* Custom CSS for enhanced About Us page */
        .main-content {
            padding-top: 80px;
            min-height: 100vh;
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            position: relative;
            overflow: hidden;
        }
        
        .main-content::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: url('data:image/svg+xml,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100" preserveAspectRatio="none"><defs><pattern id="grid" width="10" height="10" patternUnits="userSpaceOnUse"><path d="M 10 0 L 0 0 0 10" fill="none" stroke="rgba(102,126,234,0.05)" stroke-width="0.5"/></pattern></defs><rect width="100" height="100" fill="url(%23grid)"/></svg>');
            opacity: 0.6;
        }
        
        .about-container {
            background: white;
            border-radius: 25px;
            box-shadow: 0 25px 50px rgba(0,0,0,0.15);
            overflow: hidden;
            max-width: 1200px;
            margin: 40px auto;
            position: relative;
            z-index: 1;
            border: 1px solid rgba(255,255,255,0.2);
            backdrop-filter: blur(10px);
        }
        
        .about-header {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 50%, #667eea 100%);
            color: white;
            text-align: center;
            padding: 80px 40px;
            position: relative;
            overflow: hidden;
        }
        
        .about-header::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: url('data:image/svg+xml,<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 100 100"><defs><pattern id="grain" width="100" height="100" patternUnits="userSpaceOnUse"><circle cx="25" cy="25" r="1.5" fill="white" opacity="0.1"/><circle cx="75" cy="75" r="1.5" fill="white" opacity="0.1"/><circle cx="50" cy="10" r="1" fill="white" opacity="0.1"/><circle cx="10" cy="60" r="1" fill="white" opacity="0.1"/><circle cx="90" cy="40" r="1" fill="white" opacity="0.1"/></pattern></defs><rect width="100" height="100" fill="url(%23grain)"/></svg>');
            opacity: 0.4;
        }
        
        .about-header h1 {
            font-size: 3.5rem;
            font-weight: 800;
            margin-bottom: 20px;
            position: relative;
            z-index: 1;
            text-shadow: 0 2px 10px rgba(0,0,0,0.2);
            letter-spacing: -0.5px;
        }
        
        .about-header .subtitle {
            font-size: 1.4rem;
            opacity: 0.95;
            position: relative;
            z-index: 1;
            font-weight: 300;
            max-width: 600px;
            margin: 0 auto;
            line-height: 1.6;
        }
        
        .about-content {
            padding: 60px 50px;
        }
        
        .mission-section {
            background: linear-gradient(135deg, #f8f9ff 0%, #f0f2ff 100%);
            border-radius: 20px;
            padding: 40px;
            margin-bottom: 50px;
            border-left: 5px solid #667eea;
            box-shadow: 0 10px 30px rgba(102, 126, 234, 0.1);
        }
        
        .mission-title {
            color: #333;
            font-size: 1.8rem;
            font-weight: 700;
            margin-bottom: 20px;
            display: flex;
            align-items: center;
        }
        
        .mission-title i {
            color: #667eea;
            margin-right: 15px;
            font-size: 2rem;
        }
        
        .mission-text {
            font-size: 1.15rem;
            line-height: 1.8;
            color: #555;
            margin-bottom: 0;
        }
        
        .feature-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(280px, 1fr));
            gap: 30px;
            margin: 50px 0;
        }
        
        .feature-card {
            background: linear-gradient(135deg, #ffffff 0%, #f8f9fa 100%);
            border-radius: 20px;
            padding: 40px 30px;
            text-align: center;
            transition: all 0.4s ease;
            border: 1px solid rgba(102, 126, 234, 0.1);
            position: relative;
            overflow: hidden;
        }
        
        .feature-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: -100%;
            width: 100%;
            height: 100%;
            background: linear-gradient(90deg, transparent, rgba(102, 126, 234, 0.05), transparent);
            transition: left 0.6s ease;
        }
        
        .feature-card:hover::before {
            left: 100%;
        }
        
        .feature-card:hover {
            transform: translateY(-10px);
            box-shadow: 0 20px 40px rgba(0,0,0,0.15);
            border-color: rgba(102, 126, 234, 0.3);
        }
        
        .feature-icon {
            font-size: 3.5rem;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            margin-bottom: 25px;
            display: inline-block;
            transition: transform 0.3s ease;
        }
        
        .feature-card:hover .feature-icon {
            transform: scale(1.1) rotate(5deg);
        }
        
        .feature-title {
            font-size: 1.4rem;
            font-weight: 700;
            color: #333;
            margin-bottom: 15px;
        }
        
        .feature-description {
            color: #666;
            line-height: 1.7;
            font-size: 1rem;
        }
        
        .about-text {
            font-size: 1.15rem;
            line-height: 1.8;
            color: #555;
            margin-bottom: 30px;
            text-align: justify;
        }
        
        .tech-stack {
            background: linear-gradient(135deg, #f8f9fa 0%, #e9ecef 100%);
            border-radius: 20px;
            padding: 40px;
            margin: 50px 0;
            border: 1px solid rgba(0,0,0,0.05);
            position: relative;
            overflow: hidden;
        }
        
        .tech-stack::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            height: 5px;
            background: linear-gradient(90deg, #667eea, #764ba2, #667eea);
        }
        
        .tech-stack h3 {
            color: #333;
            margin-bottom: 25px;
            text-align: center;
            font-weight: 700;
            font-size: 1.8rem;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        
        .tech-stack h3 i {
            margin-right: 15px;
            color: #667eea;
        }
        
        .tech-badges {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 15px;
        }
        
        .tech-badge {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            padding: 12px 25px;
            border-radius: 50px;
            font-weight: 600;
            box-shadow: 0 5px 15px rgba(102, 126, 234, 0.3);
            transition: all 0.3s ease;
            display: flex;
            align-items: center;
            gap: 8px;
        }
        
        .tech-badge:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 25px rgba(102, 126, 234, 0.4);
        }
        
        .developer-section {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            color: white;
            border-radius: 20px;
            padding: 50px 40px;
            text-align: center;
            margin-top: 50px;
            position: relative;
            overflow: hidden;
            box-shadow: 0 15px 35px rgba(102, 126, 234, 0.3);
        }
        
        .developer-section::before {
            content: '';
            position: absolute;
            top: -50%;
            left: -50%;
            width: 200%;
            height: 200%;
            background: radial-gradient(circle, rgba(255,255,255,0.1) 0%, transparent 70%);
            animation: float 8s ease-in-out infinite;
        }
        
        @keyframes float {
            0%, 100% { transform: translateY(0px) rotate(0deg); }
            50% { transform: translateY(-20px) rotate(180deg); }
        }
        
        .developer-info {
            position: relative;
            z-index: 1;
        }
        
        .developer-avatar {
            width: 120px;
            height: 120px;
            border-radius: 50%;
            background: linear-gradient(135deg, rgba(255,255,255,0.2) 0%, rgba(255,255,255,0.1) 100%);
            margin: 0 auto 25px;
            display: flex;
            align-items: center;
            justify-content: center;
            border: 3px solid rgba(255,255,255,0.3);
            backdrop-filter: blur(10px);
        }
        
        .developer-avatar i {
            font-size: 3.5rem;
            color: white;
            opacity: 0.9;
        }
        
        .developer-name {
            font-size: 2.5rem;
            font-weight: 800;
            margin-bottom: 10px;
            text-shadow: 0 2px 5px rgba(0,0,0,0.2);
        }
        
        .developer-title {
            font-size: 1.3rem;
            opacity: 0.9;
            margin-bottom: 30px;
            font-weight: 300;
        }
        
        .developer-links {
            display: flex;
            justify-content: center;
            gap: 20px;
            flex-wrap: wrap;
        }
        
        .social-btn {
            display: inline-flex;
            align-items: center;
            background: rgba(255,255,255,0.2);
            color: white;
            padding: 15px 30px;
            border-radius: 50px;
            text-decoration: none;
            font-weight: 600;
            transition: all 0.3s ease;
            box-shadow: 0 5px 15px rgba(0,0,0,0.2);
            backdrop-filter: blur(10px);
            border: 1px solid rgba(255,255,255,0.3);
        }
        
        .social-btn:hover {
            transform: translateY(-5px);
            box-shadow: 0 10px 25px rgba(0,0,0,0.3);
            background: rgba(255,255,255,0.3);
            color: white;
            text-decoration: none;
        }
        
        .social-btn i {
            font-size: 1.5rem;
            margin-right: 10px;
        }
        
        .linkedin-btn {
            background: rgba(10, 102, 194, 0.8);
        }
        
        .github-btn {
            background: rgba(36, 41, 46, 0.8);
        }
        
        /* Responsive Design */
        @media (max-width: 768px) {
            .about-header {
                padding: 50px 20px;
            }
            
            .about-header h1 {
                font-size: 2.5rem;
            }
            
            .about-content {
                padding: 40px 25px;
            }
            
            .feature-grid {
                grid-template-columns: 1fr;
                gap: 25px;
            }
            
            .tech-stack, .developer-section {
                padding: 30px 25px;
            }
            
            .developer-name {
                font-size: 2rem;
            }
            
            .developer-links {
                flex-direction: column;
                align-items: center;
            }
            
            .social-btn {
                width: 100%;
                max-width: 250px;
                justify-content: center;
            }
        }
    </style>
</head>
<body>

<div class="main-content">
    <div class="about-container">
        <!-- Header Section -->
        <div class="about-header">
            <h1><i class="fas fa-info-circle me-3"></i>About Us</h1>
            <p class="subtitle">Empowering Education Through Innovative Technology Solutions</p>
        </div>
        
        <!-- Content Section -->
        <div class="about-content">
            <!-- Mission Section -->
            <div class="mission-section">
                <div class="mission-title">
                    <i class="fas fa-bullseye"></i>
                    Our Mission
                </div>
                <p class="mission-text">
                    Welcome to the Student Management System! Our platform is designed to simplify and modernize 
                    the way educational institutions manage student records. With a user-friendly interface and 
                    secure data handling, administrators and educators can efficiently perform tasks such as 
                    adding, updating, displaying, and deleting student information.
                </p>
            </div>
            
            <p class="about-text">
                Built with modern web technologies and following industry best practices, our system ensures 
                reliability, scalability, and maintainability. Whether you're managing a small classroom or 
                an entire institution, our platform adapts to your needs while maintaining optimal performance 
                and data integrity.
            </p>
            
            <!-- Features Grid -->
            <div class="feature-grid">
                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-user-plus"></i>
                    </div>
                    <div class="feature-title">Easy Registration</div>
                    <div class="feature-description">
                        Streamlined student registration process with intuitive forms and real-time validation
                    </div>
                </div>
                
                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-search"></i>
                    </div>
                    <div class="feature-title">Smart Search & Filter</div>
                    <div class="feature-description">
                        Advanced search functionality to quickly find and filter student records with precision
                    </div>
                </div>
                
                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-edit"></i>
                    </div>
                    <div class="feature-title">Real-time Updates</div>
                    <div class="feature-description">
                        Instant updates to student information with seamless data synchronization across the system
                    </div>
                </div>
                
                <div class="feature-card">
                    <div class="feature-icon">
                        <i class="fas fa-shield-alt"></i>
                    </div>
                    <div class="feature-title">Secure & Reliable</div>
                    <div class="feature-description">
                        Enterprise-grade security protocols ensuring complete data protection and system reliability
                    </div>
                </div>
            </div>
            
            <!-- Technology Stack -->
            <div class="tech-stack">
                <h3><i class="fas fa-code me-2"></i>Built With Modern Technologies</h3>
                <div class="tech-badges">
                    <span class="tech-badge"><i class="fab fa-java"></i> Java</span>
                    <span class="tech-badge"><i class="fas fa-database"></i> JDBC</span>
                    <span class="tech-badge"><i class="fas fa-server"></i> Servlets</span>
                    <span class="tech-badge"><i class="fab fa-js-square"></i> JSP</span>
                    <span class="tech-badge"><i class="fab fa-bootstrap"></i> Bootstrap</span>
                    <span class="tech-badge"><i class="fab fa-js"></i> JavaScript</span>
                    <span class="tech-badge"><i class="fas fa-database"></i> MySQL</span>
                </div>
            </div>
            
            <!-- Developer Section -->
            <div class="developer-section">
                <div class="developer-info">
                    <div class="developer-avatar">
                        <i class="fas fa-user-tie"></i>
                    </div>
                    <div class="developer-name">Aniket Jumde</div>
                    <div class="developer-title">Java Developer</div>
                    <div class="developer-links">
                        <a href="https://www.linkedin.com/in/aniket-jumde-74275a289/" target="_blank" class="social-btn linkedin-btn">
                            <i class="fab fa-linkedin"></i>
                            Connect on LinkedIn
                        </a>
                        <a href="https://github.com/aniketjumde/Student-Managment-System" target="_blank" class="social-btn github-btn">
                            <i class="fab fa-github"></i>
                            View on GitHub
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