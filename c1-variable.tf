variable "region_dev" {
 type    = string
 default = "us-west-1"
}
 
variable "region_prod" {
 type    = string
 default = "us-west-1"
}

variable "region_common" {
 type    = string
 default = "us-west-1"
}
# Business Division
variable "business_divsion" {
  description = "Business Division in the large organization this Infrastructure belongs"
  type = string
  default = "SAP"
}