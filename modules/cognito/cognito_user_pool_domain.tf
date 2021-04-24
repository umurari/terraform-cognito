# var.cognito_user_pool_domain
variable "cognito_user_pool_domain" {
  description = "Cognito user pool domain"
  default = "umuserpooldomain"
}


# aws_cognito_user_pool_domain.main:
resource "aws_cognito_user_pool_domain" "main" {
    domain                      = var.cognito_user_pool_domain
    user_pool_id                = aws_cognito_user_pool.userpool.id
}

