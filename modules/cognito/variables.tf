# -----------------------------------------------------------------------------
# Variables: General
# -----------------------------------------------------------------------------

# var.namespace
variable "namespace" {
  description = "AWS resource namespace/prefix"
  default = "um"
}

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

/* 

# -----------------------------------------------------------------------------
# Variables: Cognito
# -----------------------------------------------------------------------------

# var.cognito_identity_pool_name
variable "cognito_identity_pool_name" {
  description = "Cognito identity pool name"
  default = "umuserpool"
}

# var.cognito_identity_pool_provider
variable "cognito_identity_pool_provider" {
  description = "Cognito identity pool provider"
}

# var.cognito_user_pool_domain
variable "cognito_user_pool_domain" {
  description = "Cognito user pool domain"
  default = "umuserpooldomain"
} */
