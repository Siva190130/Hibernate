<%@ page language="java" contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html>

<html>
<head>
    <title>One-to-One Mapping</title>

```
<!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

<style>
    body {
        background: linear-gradient(135deg, #4facfe, #6a11cb);
        font-family: 'Segoe UI', sans-serif;
    }

    .main-card {
        max-width: 700px;
        margin: 60px auto;
        border-radius: 15px;
        background: #1e1e2f;
        color: white;
        padding: 30px;
        box-shadow: 0 10px 30px rgba(0,0,0,0.4);
    }

    .section {
        border-left: 4px solid #4facfe;
        padding-left: 15px;
        margin-bottom: 25px;
    }

    .section h5 {
        margin-bottom: 15px;
        color: #4facfe;
    }

    .relation-line {
        text-align: center;
        font-size: 22px;
        margin: 20px 0;
        animation: float 2s infinite ease-in-out;
    }

    @keyframes float {
        0% {transform: translateY(0);}
        50% {transform: translateY(-5px);}
        100% {transform: translateY(0);}
    }

    .btn-save {
        background: #4facfe;
        border: none;
        transition: 0.3s;
    }

    .btn-save:hover {
        background: #00c6ff;
        transform: scale(1.02);
    }

    .form-control {
        background: #2a2a40;
        border: none;
        color: white;
    }

    .form-control:focus {
        background: #2a2a40;
        color: white;
        box-shadow: 0 0 5px #4facfe;
    }

    label {
        font-weight: 500;
        margin-bottom: 5px;
    }
</style>
```

</head>

<body>

<div class="main-card">

```
<h3 class="text-center mb-3">🚗 Person ↔ Passport</h3>

<p class="text-center text-light">
    One-to-One Relationship: One Person owns exactly one Passport
</p>

<!-- RELATION VISUAL -->
<div class="relation-line">
    👤 Person ⇄ 🪪 Passport
</div>

<form action="person" method="post">

    <!-- PERSON SECTION -->
    <div class="section">
        <h5>👤 Person Details</h5>

        <label>Name</label>
        <input type="text" name="name" class="form-control mb-3" required>

        <label>Age</label>
        <input type="number" name="age" class="form-control" required>
    </div>

    <!-- PASSPORT SECTION -->
    <div class="section">
        <h5>🪪 Passport Details</h5>

        <label>Passport Number</label>
        <input type="text" name="passportNumber" class="form-control mb-3" required>

        <label>Country</label>
        <input type="text" name="country" class="form-control" required>
    </div>

    <button class="btn btn-save w-100 mt-3">💾 Save Relationship</button>

</form>
```

</div>

</body>
</html>
