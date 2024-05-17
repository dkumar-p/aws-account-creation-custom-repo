/*
#IAM Groups, Roles, and Policy for the Accounts

resource "aws_iam_group" "manage_user_group" {
 name = "ManageUsers"
 
 provider = aws.USERS
}
 
resource "aws_iam_group_policy_attachment" "iam_read_only_access_policy" {
 group      = aws_iam_group.manage_user_group.name
 policy_arn = "arn:aws:iam::aws:policy/IAMReadOnlyAccess"
 
 provider = aws.USERS
}
 
resource "aws_iam_group_policy_attachment" "iam_self_manage_service_specific_credentials" {
 group      = aws_iam_group.manage_user_group.name
 policy_arn = "arn:aws:iam::aws:policy/IAMSelfManageServiceSpecificCredentials"
 
 provider = aws.USERS
}
 
resource "aws_iam_group_policy_attachment" "iam_user_change_password" {
 group      = aws_iam_group.manage_user_group.name
 policy_arn = "arn:aws:iam::aws:policy/IAMUserChangePassword"
 
 provider = aws.USERS
}
 /*
resource "aws_iam_policy" "self_manage_vmfa" {
 name   = "SelfManageVMFA"
 policy = file("${path.modules}/data/mfa_policy.json")
 
 provider = aws.USERS
} 

 
resource "aws_iam_group_policy_attachment" "self_manage_vmfa" {
 group      = aws_iam_group.manage_user_group.name
 policy_arn = aws_iam_policy.self_manage_vmfa.arn
 
 provider = aws.USERS
}
*/