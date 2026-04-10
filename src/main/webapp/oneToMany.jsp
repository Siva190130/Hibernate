<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>

<html>
<head>
    <title>One-to-Many Relationship</title>

```
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
    body {
        background: linear-gradient(135deg, #4facfe, #6a11cb);
        color: white;
        font-family: 'Segoe UI', sans-serif;
    }

    .card {
        background: #1e1e2f;
        border-radius: 15px;
        padding: 25px;
        margin-top: 30px;
    }

    .hidden {
        opacity: 0;
        transform: translateY(20px);
        transition: all 0.8s ease-in-out;
    }

    .show {
        opacity: 1;
        transform: translateY(0);
    }

    .flow {
        text-align: center;
        font-size: 22px;
        margin: 20px 0;
        animation: pulse 2s infinite;
    }

    @keyframes pulse {
        0% {transform: scale(1);}
        50% {transform: scale(1.1);}
        100% {transform: scale(1);}
    }
    .card {
    background: #1e1e2f;
    color: #f1f1f1; /* 🔥 main text visible */
}

.card p {
    color: #dcdcdc;
}

.card li {
    color: #e0e0e0;
}

.card h4 {
    color: #4facfe; /* highlight headings */
}

.flow {
    color: #ffffff; /* relationship line */
}

h4 {
    font-weight: 600;
    color: #4facfe !important;
}
.card {
    box-shadow: 0 0 10px rgba(79, 172, 254, 0.2);
}

.alert {
    color: white;
}
</style>

<script>
    window.onload = function() {
        let sections = document.querySelectorAll(".hidden");

        sections.forEach((el, index) => {
            setTimeout(() => {
                el.classList.add("show");
            }, index * 800); // stagger effect
        });
    }

    function addEmployee() {
        let container = document.getElementById("employees");

        let div = document.createElement("div");
        div.className = "row mb-2";

        div.innerHTML = `
            <div class="col">
                <input type="text" name="empName" class="form-control" placeholder="Employee Name" required>
            </div>
            <div class="col">
                <input type="number" name="salary" class="form-control" placeholder="Salary" required>
            </div>
        `;

        container.appendChild(div);
    }
</script>
```

</head>

<body class="container">

```
<!-- TITLE -->
<div class="text-center mt-4 hidden">
    <h2>🏫 One-to-Many Mapping</h2>
    <p>Understanding how one entity controls many others</p>
</div>

<!-- RELATION FLOW -->
<div class="flow hidden">
    🏫 Department ➡️ 👨‍💼 Employee 👨‍💼 👨‍💼
</div>

<!-- THEORY -->
<div class="card hidden">
    <h4>🧠 Key Concept</h4>
    <p>
        In a One-to-Many relationship, a single parent entity (Department)
        can be associated with multiple child entities (Employees).
    </p>
</div>

<div class="card hidden">
    <h4>⚙️ Key Aspects</h4>
    <ul>
        <li>✔ One Department can have multiple Employees</li>
        <li>✔ Each Employee belongs to only one Department</li>
        <li>✔ Foreign key exists in Employee table</li>
        <li>✔ Department is parent (inverse side)</li>
        <li>✔ Employee is owner (controls relationship)</li>
    </ul>
</div>

<!-- FORM -->
<form action="department" method="post" class="card hidden">

    <h4>🏫 Department</h4>
    <input type="text" name="deptName" class="form-control mb-3" placeholder="Department Name" required>

    <h4>👨‍💼 Employees</h4>

    <div id="employees">
        <div class="row mb-2">
            <div class="col">
                <input type="text" name="empName" class="form-control" placeholder="Employee Name" required>
            </div>
            <div class="col">
                <input type="number" name="salary" class="form-control" placeholder="Salary" required>
            </div>
        </div>
    </div>

    <button type="button" class="btn btn-secondary mb-3" onclick="addEmployee()">+ Add Employee</button>

    <button class="btn btn-primary">💾 Save</button>

</form>
```

</body>
</html>
