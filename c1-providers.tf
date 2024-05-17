/*
terraform {
 required_providers {
   aws = {
     source  = "hashicorp/aws"
     version = "~> 1.0.0"
   }
 }
}

# Development account
provider "aws" {
 profile = "dev"
 region  = var.region_dev
}
 
#Production account
provider "aws" {
 profile = "prod"
 region  = var.region_prod
 alias   = "prod"
}

#Common/shared account
provider "aws" {
 profile = "common"
 region  = var.region_common
 alias   = "common"
}

#Create provider alias for USERS, DEV and PROD

provider "aws" {
 assume_role {
   role_arn = "arn:aws:iam::${aws_organizations_account.USERS.id}:role/admin"
 }
 
 alias  = "USERS"
 region = "us-west-1"
}
 
provider "aws" {
 assume_role {
   role_arn = "arn:aws:iam::${aws_organizations_account.DEV.id}:role/admin"
 }
 
 alias  = "DEV"
 region = "us-west-1"
}
 
provider "aws" {
 assume_role {
   role_arn = "arn:aws:iam::${aws_organizations_account.PROD.id}:role/admin"
 }
 
 alias  = "PROD"
 region = "us-west-1"
}

provider "aws" {
 assume_role {
   role_arn = "arn:aws:iam::${aws_organizations_account.COMMON.id}:role/admin"
 }
 
 alias  = "COMMON"
 region = "us-west-1"
}

*/