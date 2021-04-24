output "client_id" {
  value = module.CognitoUserPoolClient.client_id
}

output "pool_arn" {
  value = module.CognitoUserPool.pool_arn
}

output "pool_id" {
  value = module.CognitoUserPool.pool_id
}