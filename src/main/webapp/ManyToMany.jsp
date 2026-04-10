<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>

<html>
<head>
    <title>Many-to-Many</title>

```
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
    body {
        background: linear-gradient(135deg, #ff7e5f, #6a11cb);
        color: white;
    }

    .card {
        background: #1e1e2f;
        padding: 25px;
        border-radius: 15px;
        margin-top: 30px;
    }

    .hidden {
        opacity: 0;
        transform: translateY(20px);
        transition: 0.8s;
    }

    .show {
        opacity: 1;
        transform: translateY(0);
    }

    .flow {
        text-align: center;
        font-size: 22px;
        margin: 20px;
        animation: pulse 2s infinite;
    }

    @keyframes pulse {
        50% { transform: scale(1.1); }
    }
    
    body {
    background: linear-gradient(135deg, #ff7e5f, #6a11cb);
    color: #ffffff;
}

/* CARD */
.card {
    background: #1e1e2f;
    color: #f1f1f1;
    border-radius: 15px;
}

/* INPUT FIELDS */
.form-control {
    background-color: #2a2a40 !important;
    color: #ffffff !important;
    border: 1px solid #444;
}

.form-control::placeholder {
    color: #bbbbbb;
}

/* FIX INPUT TEXT VISIBILITY */
input, textarea {
    color: #ffffff !important;
}

/* BUTTON */
.btn-secondary {
    background: #444;
    color: #fff;
}

.btn-primary {
    background: #4facfe;
    border: none;
}

/* HEADINGS */
h2, h4 {
    color: #4facfe !important;
}

.form-control {
    background-color: #2a2a40 !important;
    color: #ffffff !important;
}

.form-control:focus {
    box-shadow: 0 0 8px #4facfe;
    border-color: #4facfe;
}
</style>

<script>
    window.onload = function() {
        let elements = document.querySelectorAll(".hidden");
        elements.forEach((el, i) => {
            setTimeout(() => el.classList.add("show"), i * 700);
        });
    }

    function addCourse() {
        let div = document.createElement("input");
        div.type = "text";
        div.name = "course";
        div.className = "form-control mb-2";
        div.placeholder = "Course Name";

        document.getElementById("courses").appendChild(div);
    }
</script>
```

</head>

<body class="container">

```
<div class="text-center mt-4 hidden">
    <h2>🎓 Many-to-Many Mapping</h2>
    <p>Students and Courses are interconnected</p>
</div>

<div class="flow hidden">
    🎓 Student ⇄ 📘 Course 📘 📘
</div>

<div class="card hidden">
    <h4>🧠 Concept</h4>
    <p>Each student can enroll in multiple courses and each course can have multiple students.</p>
</div>

<form action="student" method="post" class="card hidden">

    <h4>🎓 Student</h4>
    <input type="text" name="name" class="form-control mb-3" placeholder="Student Name" required>

    <h4>📘 Courses</h4>
    <div id="courses">
        <input type="text" name="course" class="form-control mb-2" placeholder="Course Name">
    </div>

    <button type="button" onclick="addCourse()" class="btn btn-secondary mb-3">
        + Add Course
    </button>

    <button class="btn btn-primary">💾 Save</button>

</form>
```

</body>
</html>
