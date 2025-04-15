# 📝 Task Manager

A simple yet practical Task Management API built with **Java, Spring Boot, and Flyway**.  
This project is designed for learning Spring Boot using clean architecture, database migration, seed data, and RESTful APIs.

---

## 🚀 Features

- Full CRUD operations for tasks
- Automatic timestamp management (`created` and `updated`)
- Environment-based database seeding (only in `dev`)
- Clean service-repository architecture
- Flyway database migrations
- Easily switchable between H2 (for development) and PostgreSQL

---

## 🧱 Tech Stack

- Java 24
- Spring Boot 3.x
- Spring Data JPA
- Flyway (for DB migrations)
- Lombok
- H2 (in-memory database for development)
- PostgreSQL (for production)
- Maven

---

## 🛠️ Getting Started

### 1. Clone the repository

```bash
git clone https://github.com/raminr77/taskmanager.git
cd taskmanager
```

### 2. Run the application
```bash
./mvn spring-boot:run -Dspring-boot.run.profiles=dev
```
OR
```bash
./mvn spring-boot:run
```

This will:

- Run the app using the dev profile

- Apply database migrations via Flyway

- Seed the database with initial sample data

##  📦 API Endpoints

| Method | Endpoint           | Description               |
|--------|--------------------|---------------------------|
| GET    | /api/tasks         | Get all tasks             |
| GET    | /api/tasks/{id}    | Get a task by ID          |
| POST   | /api/tasks         | Create a new task         |
| PUT    | /api/tasks/{id}    | Update an existing task   |
| DELETE | /api/tasks/{id}    | Delete a task             |
| POST   | /api/auth/login    | Login                     |
| POST   | /api/auth/register | Register                  |
| POST   | /api/auth/refresh  | Refresh Token             |

## 📄 Environment Profiles

| Profile | Database     | Seeding | Usage                       |
|---------|--------------|---------|-----------------------------|
| dev     | H2 (in-memory) | ✅ Yes  | Local development environment |
| prod    | PostgreSQL   | ❌ No   | Production environment      |

## 🧪 Database Migrations & Seeds
- Migrations are managed via Flyway and located in:
`src/main/resources/db/migration/`
- Seed scripts (like V2__seed_initial_tasks.sql) are located in:
`src/main/resources/db/migration/dev/`
- And only loaded when the active Spring profile is set to dev.

## 👨‍💻 Author
Made with ❤️ by Ramin Rezaei
