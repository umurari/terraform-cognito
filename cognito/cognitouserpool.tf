module "CognitoUserPool" {
  source                     = "../modules/cognito/userpool"
  cognito_user_pool_name =    var.cognito_user_pool_name
}

module "CognitoUserPoolClient" {
  source                     = "../modules/cognito/userpoolclient"
  cognito_user_pool_client_name = var.cognito_user_pool_client_name
  userpool_id =  module.CognitoUserPool.pool_id
}

module "CognitoUserPoolDomain" {
  source                     = "../modules/cognito/userpooldomain"
  cognito_user_pool_domain   = var.cognito_user_pool_domain
  userpool_id = module.CognitoUserPool.pool_id
}
