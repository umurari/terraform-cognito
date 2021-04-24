# var.cognito_user_pool_name
variable "cognito_user_pool_name" {
  description = "Cognito User pool name"
  default = "umuserpool1"
}

# var.cognito_user_pool_domain
variable "cognito_user_pool_domain" {
  description = "Cognito user pool domain"
  default = "umuserpooldomain1"
}

# var.cognito_user_pool_client
variable "cognito_user_pool_client_name" {
  description = "Cognito user pool dlient"
  default = "umappclient1"
}

# -----------------------------------------------------------------------------
# Variables: General
# -----------------------------------------------------------------------------

# var.AWS_REGION
variable "AWS_REGION" {
  default = "us-east-1"
  description = "AWS region"
}

# var.AWS_ACCESS_KEY
variable "AWS_ACCESS_KEY" {
  default = ""
  description = "AWS Access Key"
}

# var.AWS_SECRET_KEY
variable "AWS_SECRET_KEY" {
  default = ""
  description = "AWS Secret Key"
}
