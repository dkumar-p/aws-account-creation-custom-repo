# terraform {
#  required_providers {
#    aws = {
#      source  = "hashicorp/aws"
#      version = "~> 2.0"
#    }
#  }
# }
provider "aws" {
  version                 = "~> 2.0"
  region                  = "us-west-1"
  profile                 = "default"
  access_key = "AKIAVHA3OYA5MH3WFQFG"
  secret_key = "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"
}
/*
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
*/


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
/*
# Mapping AWS resources to the respective AWS account
resource "aws_s3_bucket" "dev_s3_bucket" {
   provider = aws.DEV
   bucket = "S3-Dev-Bucket"
   acl    = "public-read"
   lifecycle {
       prevent_destroy = true
   }
}
 
resource "aws_s3_bucket" "prod_s3_bucket" {
   provider = aws.prod
   bucket   = "S3-Prod-Bucket"
   acl      = "public-read"
   lifecycle {
       prevent_destroy = true
   }
}

resource "aws_s3_bucket" "common_s3_bucket" {
   provider = aws.common
   bucket   = "S3-Common-Bucket"
   acl      = "public-read"
   lifecycle {
       prevent_destroy = true
   }
}
*/
