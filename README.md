Ornamental Fish Store - Full Stack

Backend: Spring Boot 3, MySQL, JPA, Security (JWT), MapStruct, Flyway, Swagger
Frontend: React (Vite), React Router, Axios, Context API

Requirements
- Java 17+
- Node 18+
- MySQL 8+

Environment
- backend/env.example -> copy to backend/.env (or export system envs)
- frontend/env.example -> copy to frontend/.env

Backend Setup
1. Create MySQL database `fishstore` and user
2. Set env variables (Windows PowerShell example):
   $env:DB_URL="jdbc:mysql://localhost:3306/fishstore?useSSL=false&allowPublicKeyRetrieval=true&serverTimezone=UTC"
   $env:DB_USERNAME="root"
   $env:DB_PASSWORD="password"
   $env:JWT_SECRET="change_me"
   $env:JWT_EXPIRATION_MS="86400000"
3. Run:
   cd backend
   mvn spring-boot:run

Frontend Setup
1. cd frontend
2. cp .env.example .env (or create) with VITE_API_BASE_URL
3. npm install
4. npm run dev

Docker
- Backend: docker build -t fishstore-backend ./backend
  docker run --rm -p 8080:8080 --env-file backend/.env fishstore-backend
- Frontend: docker build -t fishstore-frontend ./frontend
  docker run --rm -p 8081:80 fishstore-frontend

API Docs
- Swagger UI: http://localhost:8080/swagger-ui/index.html

Postman
- Import `postman/FishStore.postman_collection.json`




