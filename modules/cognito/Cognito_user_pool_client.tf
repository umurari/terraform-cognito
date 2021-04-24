# var.cognito_user_pool_domain
variable "cognito_user_pool_client_name" {
  description = "Cognito user pool domain"
  default = "umappclient"
}


# aws_cognito_user_pool_client.client:
resource "aws_cognito_user_pool_client" "client" {
    
	name                                 = var.cognito_user_pool_client_name
    #prevent_user_existence_errors        = "ENABLED"
    user_pool_id                         = aws_cognito_user_pool.userpool.id
	generate_secret                      = false
	explicit_auth_flows                  = [
        "ALLOW_CUSTOM_AUTH",
        "ALLOW_REFRESH_TOKEN_AUTH",
        "ALLOW_USER_SRP_AUTH",
    ]
	
}

output "client_id" {
  value = aws_cognito_user_pool_client.client.id
}