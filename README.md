# 🧾 Hibernate CRUD Web Application

A simple Java web application demonstrating **Hibernate ORM with JSP, Servlets, and MySQL**, deployed on **Apache Tomcat 10** using **JDK 17**.

---

## 🚀 Tech Stack

* Java 17
* Hibernate ORM
* JSP & Servlets (Jakarta EE)
* Apache Tomcat 10
* MySQL Database
* Maven

---

## 📁 Project Features

* Create User
* View User List
* Update User
* Delete User
* Clean MVC Architecture (JSP + Servlet + DAO + Hibernate)

---

## ⚙️ Prerequisites

Before running this project, make sure you have:

* JDK 17 installed
* Apache Tomcat 10 installed
* MySQL Server running
* Eclipse IDE (Enterprise Edition recommended)
* Maven installed or Eclipse Maven support

---

## 🧭 Step-by-Step Setup in Eclipse

### 🔹 Step 1: Import Project

1. Open Eclipse
2. Go to **File → Import**
3. Select **Maven → Existing Maven Projects**
4. Browse your project folder
5. Click **Finish**

---

### 🔹 Step 2: Configure JDK 17

1. Right-click project → **Properties**
2. Go to **Java Compiler**
3. Set **Compiler compliance level = 17**
4. Go to **Java Build Path → Libraries**
5. Ensure JDK 17 is selected

---

### 🔹 Step 3: Configure Apache Tomcat 10

1. Go to **Window → Preferences → Server → Runtime Environments**
2. Click **Add → Apache Tomcat v10.0**
3. Provide Tomcat installation path
4. Click **Finish**

---

### 🔹 Step 4: Attach Tomcat to Project

1. Right-click project → **Properties**
2. Go to **Targeted Runtimes**
3. Select **Apache Tomcat 10**
4. Apply & Close

---

### 🔹 Step 5: Update Project Facets (IMPORTANT)

1. Right-click project → **Properties → Project Facets**
2. Set:

   * Dynamic Web Module → **5.0 or 6.0**
   * Java → **17**
3. Apply changes

---

### 🔹 Step 6: Configure Database

1. Create a MySQL database:

```sql
CREATE DATABASE hibernate_db;
```

2. Update `hibernate.cfg.xml`:

```xml
<property name="hibernate.connection.url">
    jdbc:mysql://localhost:3306/hibernate_db
</property>

<property name="hibernate.connection.username">root</property>
<property name="hibernate.connection.password">your_password</property>
```

---

### 🔹 Step 7: Maven Update

1. Right-click project → **Maven → Update Project**
2. Click **Force Update**

---

### 🔹 Step 8: Run the Application

1. Right-click project → **Run As → Run on Server**
2. Select **Tomcat 10**
3. Click **Finish**

---

## 🌐 Access the Application

Open browser:

```
http://localhost:8080/your-project-name/
```

---

## 🔁 Application Flow

```
JSP (UI) → Servlet (Controller) → DAO → Hibernate → MySQL
```

---

## ⚠️ Common Issues

### ❌ CSS not loading

* Ensure path:

  ```
  /css/style.css
  ```

### ❌ jakarta vs javax error

* Use **Tomcat 10 + jakarta imports**
* Ensure Dynamic Web Module is 5.0+

### ❌ Database connection error

* Check MySQL is running
* Verify username/password

---

## 📌 Notes

* Uses **Hibernate SessionFactory (manual configuration)**
* No Spring Boot (pure Hibernate learning project)
* Good foundation for moving into Spring

---

## 🙌 Author

Shiv – Java Backend Developer 🚀

---

## ⭐ Future Improvements

* Add validation
* Add pagination
* Implement relationships (One-to-Many)
* Convert to Spring Boot

---
