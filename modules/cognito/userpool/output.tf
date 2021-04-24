output "pool_arn" {
  value = aws_cognito_user_pool.userpool.arn
}

output "pool_id" {
  value = aws_cognito_user_pool.userpool.id
}
