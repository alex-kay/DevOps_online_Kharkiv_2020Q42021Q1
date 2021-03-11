variable "instance_name" {
  description = "Value of the Name tag for the EC2 instance"
  type        = string
  default     = "ExampleInstance"
}
variable "KEYPUB" {
  description = "SSH Key public"
  type        = string
}