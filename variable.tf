
# variables.tf

variable "region" {
     default = "us-east-1"
     }
variable "az1" {
     default = "us-east-1a"
     }
variable "az2" {
     default = "us-east-1b"
     }
variable "vpc_cidr" {
     default = "10.0.0.0/16"
     }
variable "public_cidr" {
     default = "10.0.1.0/24"
     }
variable "private_app_cidr" {
     default = "10.0.2.0/24"
     }
variable "private_db_cidr" { 
    default = "10.0.3.0/24"
     }
variable "project_name" {
     default = "FCT"
     }
variable "ami" {
     default = "ami-068c0051b15cdb816" 
     }
variable "instance_type" {
     default = "t2.micro" 
     }
variable "key" {
     default = "terraform-key" 
     }
