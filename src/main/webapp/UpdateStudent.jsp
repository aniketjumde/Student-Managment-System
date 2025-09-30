<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="Header.jsp" %>
<%@ page import="java.util.*, com.tca.entities.*" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Update Student - Student Management System</title>
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script type="text/javascript">
    
function openUpdatePopup(trno) {
    var tr = document.getElementById(trno);
    
    // Get data from data attributes
    var srno = tr.getAttribute('data-rno');
    var sname = tr.getAttribute('data-name');
    var sper = tr.getAttribute('data-per');
    
    var modalRno = document.getElementById("modalRno");
    var modalName = document.getElementById("modalName");
    var modalPer = document.getElementById("modalPer");
    
    modalRno.value = srno;
    modalName.value = sname;
    modalPer.value = sper;
    
    new bootstrap.Modal(document.getElementById("updateModal")).show();
}

function modify() {
    var modalRno = document.getElementById("modalRno");
    var modalName = document.getElementById("modalName");
    var modalPer = document.getElementById("modalPer");
    
    var updateSrno = modalRno.value;
    var updateSname = modalName.value;
    var updatePer = modalPer.value;
    
    // Get the update button and show loading state
    var updateBtn = document.querySelector('#updateModal .btn-warning');
    var originalText = updateBtn.innerHTML;
    updateBtn.innerHTML = '<i class="fas fa-spinner fa-spin me-2"></i>Updating...';
    updateBtn.disabled = true;
    
    // Validation
    if(!updateSname || !updateSname.trim()) {
        swal("Error!", "Please enter student name", "error");
        resetButton(updateBtn, originalText);
        return;
    }
    
    if(!updatePer || isNaN(updatePer) || updatePer < 0 || updatePer > 100) {
        swal("Error!", "Please enter valid percentage (0-100)", "error");
        resetButton(updateBtn, originalText);
        return;
    }
    
    // Use relative URL instead of hardcoded absolute URL
    fetch("./update", {
        method: 'POST',
        headers: {
            'Content-Type': 'application/x-www-form-urlencoded',
        },
        body: new URLSearchParams({
            "trno": updateSrno, 
            "tname": updateSname, 
            "tper": updatePer
        })
    })
    .then(response => {
        if (!response.ok) {
            throw new Error('Network response was not ok');
        }
        return response.text();
    })
    .then(data => {
        if(data.trim() === 'Success') {
            // Close modal first
            var modal = bootstrap.Modal.getInstance(document.getElementById("updateModal"));
            modal.hide();
            
            swal("Success!", "Record updated successfully!", "success")
                .then(() => {
                    // Update the table row data attributes
                    var tr = document.getElementById(updateSrno);
                    if (tr) {
                        tr.setAttribute('data-name', updateSname);
                        tr.setAttribute('data-per', updatePer);
                        
                        // Update the displayed values in the table
                        var nameCell = tr.querySelector('td:nth-child(2) .fw-semibold');
                        var perCell = tr.querySelector('td:nth-child(3) .fw-bold');
                        var progressBar = tr.querySelector('.progress-bar');
                        
                        if (nameCell) nameCell.textContent = updateSname;
                        if (perCell) perCell.textContent = updatePer + '%';
                        if (progressBar) progressBar.style.width = updatePer + '%';
                    }
                });
        } else {
            swal("Failed!", "Failed to update record: " + data, "error");
        }
    })
    .catch(err => {
        console.error("Error:", err);
        swal("Error!", "Network error occurred while updating record", "error");
    })
    .finally(() => {
        resetButton(updateBtn, originalText);
    });
}

function resetButton(button, originalText) {
    if (button) {
        button.innerHTML = originalText;
        button.disabled = false;
    }
}

// Add event listener for Enter key in modal
document.addEventListener('DOMContentLoaded', function() {
    var modal = document.getElementById('updateModal');
    if (modal) {
        modal.addEventListener('keypress', function(e) {
            if (e.key === 'Enter') {
                modify();
            }
        });
    }
});

</script>
</head>
<body>

<div class="main-content">
    <div class="container">
        <!-- Page Header -->
        <div class="row mb-4">
            <div class="col-12">
                <div class="card border-0 bg-transparent">
                    <div class="card-body text-center py-4">
                        <i class="fas fa-edit text-warning mb-3" style="font-size: 3rem;"></i>
                        <h1 class="display-5 fw-bold text-dark mb-2">Update Student Records</h1>
                        <p class="lead text-muted">Modify existing student information</p>
                    </div>
                </div>
            </div>
        </div>

        <!-- Search Section -->
        <div class="row mb-4">
            <div class="col-12">
                <div class="card">
                    <div class="card-body">
                        <form class="row g-3 align-items-end" role="search" method="GET" action="./update">
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
                                        <th class="px-4 py-3 text-center">
                                            <i class="fas fa-edit me-2"></i>Action
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <%
                                    List<Student> L = (List<Student>) request.getAttribute("students");
                                    
                                    if(L == null || L.isEmpty()) {
                                    %>
                                        <tr>
                                            <td colspan="4" class="text-center py-5">
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
                                        <!-- FIX: Add data attributes to tr element -->
                                        <tr id="<%= s.getRno() %>" 
                                            data-rno="<%= s.getRno() %>"
                                            data-name="<%= s.getName() %>" 
                                            data-per="<%= s.getPer() %>"
                                            class="align-middle">
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
                                            <td class="px-4 py-3 text-center">
                                                <button type="button" class="btn btn-warning btn-sm" 
                                                        onclick="openUpdatePopup(<%= s.getRno() %>)">
                                                    <i class="fas fa-edit me-1"></i>Update
                                                </button>
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
    </div>
</div>

<!-- Update Modal -->
<div class="modal" tabindex="-1" id="updateModal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title text-white d-flex align-items-center">
            <i class="fas fa-edit me-2"></i>Update Student Record
        </h5>
        <button type="button" class="btn-close btn-close-white" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      
      <div class="modal-body">
        <div class="mb-3">
            <label class="form-label fw-semibold d-flex align-items-center">
                <i class="fas fa-hashtag me-2"></i>Roll Number
            </label>
            <input type="text" class="form-control" id="modalRno" readonly 
                   style="background-color: #f8f9fa;">
        </div>
        
        <div class="mb-3">
            <label class="form-label fw-semibold d-flex align-items-center">
                <i class="fas fa-user me-2"></i>Student Name
            </label>
            <input type="text" class="form-control" id="modalName">
        </div>
        
        <div class="mb-3">
            <label class="form-label fw-semibold d-flex align-items-center">
                <i class="fas fa-percent me-2"></i>Percentage
            </label>
            <input type="text" class="form-control" id="modalPer">
        </div>
      </div>
      
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">
            <i class="fas fa-times me-2"></i>Close
        </button>
        <button type="button" class="btn btn-warning" onclick="modify()">
            <i class="fas fa-save me-2"></i>Update Changes
        </button>
      </div>
    </div>
  </div>
</div>

</body>
</html>

<%@include file="Footer.jsp" %>