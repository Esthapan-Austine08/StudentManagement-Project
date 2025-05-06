<%@ page isELIgnored="false" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="frm" %>


<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">

<!-- Centering the form inside a container -->
<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">
            <div class="card shadow-lg p-4">
                <div class="card-header text-center bg-primary text-white">
                    <h2><i class="bi bi-person-fill"></i> Student Registration Form</h2>
                </div>
                <div class="card-body">
                    <frm:form action="add" method="post" modelAttribute="st">
                        <div class="mb-3">
                            <label class="form-label"><strong>Name</strong></label>
                            <frm:input type="text" path="sname" class="form-control" placeholder="Enter your name"/>
                        </div>

                        <div class="mb-3">
                            <label class="form-label"><strong>Mobile</strong></label>
                            <frm:input type="text" path="smobile" class="form-control" placeholder="Enter your mobile"/>
                        </div>

                        <div class="mb-3">
                            <label class="form-label"><strong>Qualification</strong></label>
                            <frm:input type="text" path="sqlfy" class="form-control" placeholder="Enter your qualification"/>
                        </div>

                        <div class="mb-3">
                            <label class="form-label"><strong>Percentage</strong></label>
                            <frm:input type="text" path="spercent" class="form-control" placeholder="Enter your percentage"/>
                        </div>

                        <div class="text-center mt-4">
                            <button type="submit" class="btn btn-success me-2">
                                <i class="bi bi-check-circle"></i> Register
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


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
