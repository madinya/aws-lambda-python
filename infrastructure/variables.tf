variable "REGION" {
  description = "Aws region"
  type        = string
}
variable "ACCESS_KEY" {
  description = "Aws access key"
  type        = string
  sensitive   = true
}
variable "SECRET_KEY" {
  description = "Aws secret key"
  type        = string
  sensitive   = true
}
variable "APL_IMAGE" {
  description = "APL docker image for the lambda that is stored in ECR"
  type        = string
  sensitive   = true
}

