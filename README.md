# AWS Infrastructure & CI/CD Pipeline using Terraform, Docker & GitHub Actions

## Overview

This project demonstrates an end-to-end DevOps workflow by provisioning AWS infrastructure using **Terraform** and automating application deployment with **GitHub Actions**. A Dockerized Flask application is deployed to an Amazon EC2 instance through a CI/CD pipeline.

The goal of this project is to showcase Infrastructure as Code (IaC), containerization, and deployment automation using modern DevOps practices.

---

## Architecture

```
Developer
      │
      ▼
 GitHub Repository
      │
      ▼
 GitHub Actions
      │
      ├── Checkout Code
      ├── Install Dependencies
      ├── Run Validation
      ├── Build Docker Image
      ├── Transfer Image to EC2
      └── Deploy Application
      │
      ▼
 Amazon EC2 (Docker)
      │
      ▼
 Flask Application
```

---

## Features

- Infrastructure provisioning using Terraform
- Automated AWS resource creation
- Dockerized Flask application
- CI/CD pipeline with GitHub Actions
- Automated deployment to Amazon EC2
- Infrastructure as Code (IaC)
- Reproducible deployments

---

## Tech Stack

- AWS EC2
- AWS VPC
- AWS S3
- AWS IAM
- Terraform
- Docker
- GitHub Actions
- Python (Flask)
- Git
- Linux

---

## Project Structure

```
aws-terraform-cicd/
│
├── app/
│   ├── app.py
│   ├── requirements.txt
│   ├── templates/
│   └── static/
│
├── terraform/
│   ├── provider.tf
│   ├── networking.tf
│   ├── ec2.tf
│   ├── iam.tf
│   ├── s3.tf
│   ├── outputs.tf
│   ├── variables.tf
│   └── terraform.tfvars
│
├── .github/
│   └── workflows/
│       └── deploy.yml
│
├── Dockerfile
├── docker-compose.yml
├── .dockerignore
├── .gitignore
└── README.md
```

---

## Prerequisites

- AWS Account
- Terraform
- Docker
- Git
- Python 3.11+
- GitHub Account
- EC2 Key Pair

---

## Deployment Steps

### Clone Repository

```bash
git clone https://github.com/<your-username>/aws-terraform-cicd.git
cd aws-terraform-cicd
```

### Provision Infrastructure

```bash
cd terraform

terraform init

terraform plan

terraform apply
```

### Run Application Locally

```bash
pip install -r app/requirements.txt

python app/app.py
```

Visit:

```
http://localhost:5000
```

---

### Run with Docker

Build image

```bash
docker build -t tourism-app .
```

Run container

```bash
docker run -d -p 5000:5000 tourism-app
```

---

### CI/CD Workflow

Every push to the **main** branch automatically:

- Checks out the source code
- Installs project dependencies
- Validates the application
- Builds a Docker image
- Transfers the image to EC2
- Deploys the latest container

---

## Learning Outcomes

- Infrastructure as Code (Terraform)
- AWS Cloud Infrastructure
- Docker Containerization
- CI/CD Automation
- GitHub Actions
- Cloud Deployment
- Linux Administration
- DevOps Best Practices

---

## Future Improvements

- Deploy Docker images through Amazon ECR
- Add HTTPS using Nginx and SSL
- Configure a custom domain with Route 53
- Add monitoring using CloudWatch
- Integrate Terraform remote state with S3
- Add Terraform modules for reusable infrastructure
- Implement Blue/Green deployment strategy

---

## Author

**Ayush Thaokar**

Aspiring DevOps & Cloud Engineer

LinkedIn: https://linkedin.com/in/<your-profile>

GitHub: https://github.com/<your-username>

---

## License

This project is licensed under the MIT License.
