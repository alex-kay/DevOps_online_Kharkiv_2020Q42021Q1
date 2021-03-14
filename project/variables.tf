variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "ExampleInstance"
}
variable "KEYPUB" {
  description = "SSH Key public"
  type        = string
}
variable "KEY_ANSIBLE" {
  description = "default SSH id_rsa key for Ansible"
  type        = string
}
variable "ami" {
  description = "default Amazon Linux AMI"
  type        = string
  default     = "ami-038f1ca1bd58a5790"
}
variable "zone53" {
  description = "my Route 53 domain zone"
  type        = string
  default     = "Z08976621BVTLFA2P15V8"
}
