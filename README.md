# 🚀 Create EC2 Instance using Terraform in Docker

This project demonstrates how to create an **AWS EC2 instance** using **Terraform** running inside a **Docker container**. It's a perfect hands-on example for DevOps enthusiasts who want to explore Infrastructure as Code (IaC), containerization, and AWS provisioning.

---

## 📁 Project Structure

---

## 🛠️ Prerequisites

- AWS account
- IAM user with EC2 full access
- `.pem` file (key pair) for SSH access
- Ubuntu-based system or compatible terminal
- Git, Docker installed

---

## 🧑‍💻 Step-by-Step Instructions

### **Step 1: Launch an EC2 instance manually (for reference)**

- Log in to your AWS console
- Launch a test instance
- Note the **AMI ID** and the **Key Pair name** (e.g., `my-key.pem`)

---

### **Step 2: Prepare your Ubuntu environment**

```bash
sudo apt update
sudo apt install docker.io -y
sudo usermod -aG docker ubuntu
# Reconnect terminal or logout-login to apply group changes
docker pull hashicorp/terraform
docker run -it --entrypoint sh -v "$(pwd)":/workspace -w /workspace hashicorp/terraform
terraform init
terraform plan
terraform apply


