#  #Create AWS organization
#   provider "aws" {
#      region = "us-west-1"

#   }
 
#  resource "aws_organizations_organization" "organization" {
#  }

#Create DEV,PROD and COMMON account
 resource "aws_organizations_account" "USERS" {
  name      = "users"
  email     = "users1@test.com"
  role_name = "admin"
 }
 
resource "aws_organizations_account" "DEV" {
 name      = "ibm-dev"
 email     = "dev1@test.com"
 role_name = "admin"
}
 
resource "aws_organizations_account" "PROD" {
 name      = "ibm-production"
 email     = "prod1@test.com"
 role_name = "admin"
}

resource "aws_organizations_account" "COMMON" {
 name      = "ibm-common"
 email     = "common@test.com"
 role_name = "admin"
}



