# aws_cognito_user_pool_domain.main:
resource "aws_cognito_user_pool_domain" "main" {
    domain                      = var.cognito_user_pool_domain
    user_pool_id                = var.userpool_id
}

