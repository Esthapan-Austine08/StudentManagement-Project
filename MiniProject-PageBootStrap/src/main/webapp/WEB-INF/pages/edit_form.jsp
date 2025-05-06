<%@ page isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm" %>

<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card shadow-lg">
                <div class="card-header text-center bg-warning text-white">
                    <h2><i class="bi bi-pencil-square"></i> Student Edit Form</h2>
                </div>
                <div class="card-body">
                    <frm:form method="post" modelAttribute="st">
                        <div class="mb-3">
                            <label class="form-label"><strong>Student No</strong></label>
                            <frm:input type="text" path="sno" class="form-control" readonly="true"/>
                        </div>

                        <div class="mb-3">
                            <label class="form-label"><strong>Name</strong></label>
                            <frm:input type="text" path="sname" class="form-control" placeholder="Enter student name"/>
                        </div>

                        <div class="mb-3">
                            <label class="form-label"><strong>Mobile</strong></label>
                            <frm:input type="text" path="smobile" class="form-control" placeholder="Enter mobile number"/>
                        </div>

                        <div class="mb-3">
                            <label class="form-label"><strong>Qualification</strong></label>
                            <frm:input type="text" path="sqlfy" class="form-control" placeholder="Enter qualification"/>
                        </div>

                        <div class="mb-3">
                            <label class="form-label"><strong>Percentage</strong></label>
                            <frm:input type="text" path="spercent" class="form-control" placeholder="Enter percentage"/>
                        </div>

                        <div class="text-center mt-4">
                            <button type="submit" class="btn btn-primary me-2">
                                <i class="bi bi-pencil"></i> Edit Student
                            </button>
                            <button type="reset" class="btn btn-danger">
                                <i class="bi bi-x-circle"></i> Cancel
                            </button>
                        </div>
                    </frm:form>
                </div>
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
