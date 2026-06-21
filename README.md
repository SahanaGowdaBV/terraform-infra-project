# terraform-infra-project

# 🚀 Terraform Infrastructure Project (Modular DevOps Portfolio)

## 📌 Overview

This repository demonstrates a **production-style Infrastructure as Code (IaC) setup** using Terraform with a modular architecture.

It is designed to simulate real-world cloud infrastructure provisioning for DevOps / Cloud Architect roles.

The project includes:

* Modular Terraform design
* Multi-project execution (VPC, EC2, S3, RDS, IAM, Route53)
* Environment-based configuration
* CI/CD integration using GitHub Actions

---

# 🧱 Architecture Approach

This repository follows a **modular + project-based structure**:

* **modules/** → reusable infrastructure components
* **projects/** → independent infrastructure deployments
* **env/** → environment-specific variables
* **GitHub Actions** → dynamic execution of Terraform

---

# 📂 Project Structure

```
terraform-infra-project/
│
├── modules/              # Reusable Terraform modules
├── projects/             # Independent infra projects
├── env/                  # Environment variables
├── .github/workflows/    # CI/CD pipeline
└── README.md
```

---

# 📦 Included Infrastructure Projects

| Project       | Description                            |
| ------------- | -------------------------------------- |
| P1 - VPC      | Creates VPC, subnets, internet gateway |
| P2 - EC2      | Launches EC2 instance                  |
| P3 - S3       | Creates S3 bucket                      |
| P4 - RDS      | Creates MySQL RDS instance             |
| P5 - Snapshot | Creates RDS snapshot                   |
| P6 - IAM      | Creates IAM user with policy           |
| P7 - Route53  | Creates hosted zone                    |

---

# 🧰 Prerequisites

Install the following tools:

## 🔹 Install Terraform

https://developer.hashicorp.com/terraform/downloads

Verify:

```bash
terraform -version
```

---

## 🔹 Install Git

https://git-scm.com/downloads

Verify:

```bash
git --version
```

---

## 🔹 (Optional) AWS CLI

Not required for planning, but needed for actual deployment.

---

# 📥 Clone Repository

```bash
git clone https://github.com/YOUR_USERNAME/terraform-infra-project.git
cd terraform-infra-project
```

---

# ⚙️ How to Run Locally

> ⚠️ Note: Without AWS credentials, only `init` and `plan` will work.

---

## ✅ Run Any Project

Example: Run VPC project

```bash
cd projects/p1-vpc
terraform init
terraform plan -var-file=../../env/dev.tfvars
```

---

## 🔁 Run Other Projects

Replace folder name:

```bash
cd projects/p2-ec2
cd projects/p3-s3
cd projects/p4-rds
```

---

# 🚀 GitHub Actions Execution

This repo supports dynamic execution using GitHub Actions.

## ▶️ Steps:

1. Go to **GitHub → Actions**
2. Select **Terraform Pipeline**
3. Click **Run workflow**
4. Enter project name:

   ```
   p1-vpc
   p2-ec2
   p3-s3
   ```
5. Run workflow

---

# 📊 What Happens in Pipeline

* Initializes Terraform
* Runs `terraform plan`
* Uses environment variables
* Executes selected project only

---

# 🔐 Environment Configuration

Environment variables are stored in:

```
env/dev.tfvars
```

Example:

```
region = "us-east-1"
```

---

# 🧠 Key Features

* Modular Terraform architecture
* Multi-project execution
* Environment-based configuration
* CI/CD automation
* Scalable design pattern

---

# ⚠️ Limitations

* AWS account required for `terraform apply`
* Some resource values are placeholders (AMI, credentials)

---

# 🚀 Future Improvements

* Add remote backend (S3 + DynamoDB)
* Add multi-environment (dev/staging/prod)
* Add Terraform workspaces
* Integrate with AWS credentials in CI/CD
* Add cost optimization tagging

---

# 🏆 Why This Project Matters

This project demonstrates:

* Real-world Terraform structure
* Infrastructure modularization
* DevOps automation practices
* Cloud architecture fundamentals

---

# 👩‍💻 Author

DevOps Engineer | Cloud | Kubernetes | CI/CD | Terraform
