<!DOCTYPE html>
<html>
<head>
    <title>Welcome</title>
</head>
<body>
    <h2>Welcome, <%= session.getAttribute("user") %>!</h2>
    <h3>List of Students:</h3>
    <table border="1">
        <tr>
            <th>Student ID</th>
            <th>Department</th>
            <th>Mark</th>
            <th>Pass Percentage (%)</th>
        </tr>
        <c:forEach var="student" items="${sessionScope.students}">
            <tr>
                <td>${student.studentID}</td>
                <td>${student.department}</td>
                <td>${student.mark}</td>
                <td>${student.passPercentage}</td>
            </tr>
        </c:forEach>
    </table>
    <br>
    <a href="logout.jsp">Logout</a>
</body>
</html>