/*
#IAM user account

variable "name" {
 type = string
}
 
variable "pgp_key" {
 type = string
}
 
variable "groups" {
 type = list(string)
}
 
resource "aws_iam_user" "this" {
 name = var.name
}
 
resource "aws_iam_user_login_profile" "this" {
 user    = aws_iam_user.this.name
 pgp_key = var.pgp_key
}
 
resource "aws_iam_access_key" "this" {
 user    = aws_iam_user.this.name
 pgp_key = var.pgp_key
}
 
resource "aws_iam_user_group_membership" "this" {
 user = aws_iam_user.this.name
 
 groups = var.groups
}
 
output "summary" {
 value = {
   name              = var.name
   password          = aws_iam_user_login_profile.this.encrypted_password
   access_key_id     = aws_iam_access_key.this.id
   secret_access_key = aws_iam_access_key.this.encrypted_secret
 }
}

#create a user with production access

module "test_user" {
 source  = "modules/user"
 name    = "test.user"
 pgp_key = "lkjsdfuLKASDEGBDEOPNBSG..." # public key
 
 groups = [
   aws_iam_group.self_managing.name,
   module.developer_group_production.group_name
 ]
 
 providers = {
   aws = aws.users
 }
}
 
output "user_details" {
 value = [
   module.test_user.summary
 ]
}
*/
