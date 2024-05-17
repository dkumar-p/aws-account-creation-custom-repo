/*
terraform {
 required_providers {
   aws = {
     source  = "hashicorp/aws"
     version = "~> 2.0"
   }
 }
}

provider "aws" {
  region = "us-west-1"

  # assume_role {
  #   role_arn     = "arn:aws:iam::${aws_organizations_account.account.id}:role/admin"
  #   #role_arn     = "arn:aws:iam::Dev:role/admin"
  #   #role_arn     = "arn:aws:iam::084707226983:role/admin"
    
    
  # }
  alias = "master"
}
# Development account
provider "aws" {
 profile = "dev"
 region  = var.region_dev
 alias   = "dev"
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
}*/