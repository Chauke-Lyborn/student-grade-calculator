# VUT Student Grade Calculator

## ASSDX4A DevOps Practical Assessment – Semester 1, 2026

This is a Java web application that calculates student grades based on semester marks and exam marks. It is built with **Maven** and runs on **Apache Tomcat**.

## Group Members
| Name | Student Number | Role |
|------|---------------|------|
| Vushaka Chauke | 223232327 | Git Lead |
| Vuako Makhubele | 222039485 | CI Engineer |
| Nseketelo Shangule  | 223389706| QA Tester |
| Mbhoni Mabasa | 221144277 | Deployment Lead |
## Live Application
URL: https://student-grade-calculator-fejw.onrender.com/
## Project Overview
This project implements a complete CI/CD pipeline for a Java web application that calculates student grades based on VUT grading policy.
The application contained 9 intentional bugs which were identified through automated unit testing and fixed in GradeCalculator.java.
## Technologies Used- Java 11, Maven, Servlet/JSP, Apache Tomcat 9- Git and GitHub (version control, branch protection, pull requests)- GitHub Actions (CI: build and test on every push; CD: deploy to Render)- Jenkins (local CI/CD pipeline with stages)- Docker (containerisation using Tomcat 9 base image)- Render.com (cloud deployment via deploy hook)
---

## Technologies Used

- Java 11
- Maven
- Servlet / JSP
- Apache Tomcat 9
- Git
- GitHub
- GitHub Actions (CI: build and test on every push; CD: deploy to Render)
- Jenkins (local CI/CD pipeline with stages)
- Docker (containerisation using Tomcat 9 base image)
- Render.com (cloud deployment via deploy hook)

---
## CI/CD Pipeline Flow
1. Developer creates feature branch and pushes code
2. Pull request created to main
3. GitHub Actions CI runs: Checkout > Build > Test > Upload artifact
4. PR merged to main triggers Deploy workflow
5. Deploy workflow re-runs CI then calls Render deploy hook via curl
6. Render pulls latest Docker image and deploys the application
## Jenkins Pipeline Stages
Checkout > Build (mvn package -DskipTests) > Test (mvn test) > Package > Archive WAR
## Bugs Fixed
See full Bug Report in the submitted PDF/DOCX report.
## How to Run Locally with Docker
```bash
git clone https://github.com/Chauke-Lyborn/student-grade-calculator.git
cd student-grade-calculator
mvn clean package -DskipTests
docker build -t student-grade-calculator .
docker run -p 8080:8080 student-grade-calculator
# Open http://localhost:8080 in your browser
```
## How to Run Tests
```bash
mvn test
```