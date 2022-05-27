#-------------------------------------------
# Required variables (do not add defaults here!)
#-------------------------------------------

#-------------------------------------------
# Configurable variables
#-------------------------------------------
variable "region" {
  default = "us-west-2"
}

variable "app_namespace" {
  default = "deno-test"
}

variable "lambda_file" {
  default = "../../build/lambda.zip"
}

variable "lambda_layer_file" {
  default = "../../build/layer.zip"
}

#-------------------------------------------
# Interpolated Values
#-------------------------------------------

locals {
  project = "${var.app_namespace}_${terraform.workspace}"
  api_lambda_name       = "${local.project}_api"
}