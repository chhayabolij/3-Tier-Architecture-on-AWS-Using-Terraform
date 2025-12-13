# 🚀 3-Tier Architecture on AWS Using Terraform

This project deploys a complete **3-Tier Architecture** on AWS using **Terraform**.  
The setup includes a **Web Tier (Public Subnet)**, **App Tier (Private Subnet)**, and **Database Tier (Private Subnet)** with secure routing, NAT Gateway, and Internet access for required layers.

---

## 🏗️ Architecture Overview

![](./3-tier%20AWS%20architecture%20with%20Terraform.png)

### **VPC Setup**
- Custom VPC (`10.0.0.0/16`)
- Three subnets:
  - Public Subnet (Web Tier)
  - Private Subnet (App Tier)
  - Private Subnet (DB Tier)
- High Availability using different AZs

### **Networking Components**
- Internet Gateway (IGW)
- NAT Gateway for private instances
- Public Route Table → IGW
- Private Route Table → NAT Gateway

### **Compute**
- EC2 Web Server (public)
- EC2 App Server (private)
- EC2 DB Server (private)

### **Security**
- Security Group allowing:
  - SSH (22)
  - HTTP (80)
  - HTTPS (443)

---

## 📁 Project Structure
```
├── main.tf
├── variables.tf
├── outputs.tf
├── README.md
└── img/ (All screenshots & diagrams)
```


---

## ⚙️ Requirements

| Tool | Version |
|------|---------|
| Terraform | v1.5+ |
| AWS CLI | v2 |
| AWS Account | Required |
| SSH Key | Must exist in AWS EC2 panel |

---

## 🔧 How to Use

### **1. Configure AWS Credentials**
```
aws configure
```
Enter:

* AWS Access Key

* AWS Secret Key

* Region

* Output format

### **2. Initialize Terraform**
```
terraform init
```
### **3. Validate Configuration**
```
terraform validate
```
### **4. Deploy Infrastructure**
```
terraform apply --auto-approve
```
## 🌐 Outputs

After deployment, Terraform prints:

* Web Server Public IP

* App Server Private IP

* DB Server Private IP

Example:
```
web_public_ip = "13.xxx.xxx.xxx"
app_private_ip = "10.0.2.10"
db_private_ip  = "10.0.3.12"
```
## 🧹 Destroy Infrastructure
```
terraform destroy --auto-approve
```
## 📸 Screenshots

#### **1️⃣ Terraform Apply Output**

![](./Screenshot%20(181).png)

---

#### **2️⃣ S3 Bucket (Terraform Backend)**

![](./Screenshot%20(187).png)

---

#### **3️⃣ EC2 Instances**

![](./Screenshot%20(182).png)

---

#### **4️⃣ VPC Overview**

![](./Screenshot%20(188).png)

---

#### **5️⃣ Subnets (Public, App, DB)**

![](./Screenshot%20(186).png)

---

#### **6️⃣ Route Tables**

![](./Screenshot%20(185).png)

---

#### **7️⃣ Internet Gateway (IGW)**

![](./Screenshot%20(183).png)

---

#### **8️⃣ NAT Gateway**

![](./Screenshot%20(184).png)

---

## 📌 Features

✔ Fully automated 3-tier infrastructure

✔ Modular, scalable architecture

✔ Secure private networking

✔ NAT-enabled outbound access

✔ Reusable Terraform variables

✔ AWS best-practice design

## 🧑‍💻 Author

chhaya bolij

Terraform | AWS | DevOps | Cloud Projects
