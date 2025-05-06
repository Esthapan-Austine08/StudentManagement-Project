<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.css">
 


<h1 style="color: green;text-align: center;">Report Page Number ::${sList.getNumber()+1}/${sList.getTotalPages()}</h1>
<c:choose>
<c:when test="${!empty sList}">
<table align="center" class="table table-hover table-dark table-striped caption-top">
<tr>
	<th>RollNo</th><th>Name</th><th>MobileNo</th><th>Qualification</th><th>Percentage</th><th>Operation</th>
</tr>
<c:forEach var="st" items="${sList.getContent()}">
<tr>
	<td>${st.sno}</td>
	<td>${st.sname}</td>
	<td>${st.smobile}</td>
	<td>${st.sqlfy}</td>
	<td>${st.spercent}</td>
	<td><button class="btn btn-success"><a href="edit?sid=${st.sno}" class="text-decoration-none text-white">Edit</a></button>&nbsp;&nbsp;
	   <button class="btn btn-danger"><a href="delete?sid=${st.sno}"  class="text-decoration-none text-white"  onclick="return confirm('Do you want to delete the Student details ?')">Delete</a></button>
	</td>
</tr>
</c:forEach>
</table>
<div class="container mt-4">
    <nav aria-label="Page navigation">
        <ul class="pagination justify-content-center">

            <!-- First Page -->
            <c:if test="${!sList.isFirst()}">
                <li class="page-item">
                    <a class="page-link" href="report?page=0">First</a>
                </li>
            </c:if>

            <!-- Previous Page -->
            <c:if test="${sList.hasPrevious()}">
                <li class="page-item">
                    <a class="page-link" href="report?page=${sList.getNumber()-1}">Previous</a>
                </li>
            </c:if>

            <!-- Page Numbers -->
            <c:forEach var="i" begin="0" end="${sList.getTotalPages()-1}" step="1">
                <li class="page-item ${sList.getNumber() == i ? 'active' : ''}">
                    <a class="page-link" href="report?page=${i}">${i+1}</a>
                </li>
            </c:forEach>

            <!-- Next Page -->
            <c:if test="${sList.hasNext()}">
                <li class="page-item">
                    <a class="page-link" href="report?page=${sList.getNumber()+1}">Next</a>
                </li>
            </c:if>

            <!-- Last Page -->
            <c:if test="${!sList.isLast()}">
                <li class="page-item">
                    <a class="page-link" href="report?page=${sList.getTotalPages()-1}">Last</a>
                </li>
            </c:if>

        </ul>
    </nav>
</div>
</c:when>
<c:otherwise>
	<h3 style="color: red;text-align: center;">Record not Found</h3>
</c:otherwise>
</c:choose>
<h3 style="color: red; text-align: center;">${resultMsg}</h3>
<button class="btn btn-primary"><h2 style="color: blue;text-align: center;"><a href="./" class="text-decoration-none text-white">Home page</a></h2></button>
<button  class="btn btn-primary"><h2 style="color: blue;text-align: center;"><a href="add" class="text-decoration-none text-white" >Add Student</a></h2>
</button>