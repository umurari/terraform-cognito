# var.cognito_user_pool_name
variable "cognito_user_pool_name" {
  description = "Cognito User pool name"
  default = "umuserpool"
}

resource "aws_cognito_user_pool" "userpool" {
    auto_verified_attributes   = [ "email" ]
    
	#email_verification_message = "Your verification code is {####}. "
    #email_verification_subject = "Your verification code"
       
    #mfa_configuration          = "OFF"
    
    name                       = var.cognito_user_pool_name

    #sms_authentication_message = "Your authentication code is {####}. "
    #sms_verification_message   = "Your verification code is {####}. "
    
	tags                       = {
		
	}
         
    account_recovery_setting {
        recovery_mechanism {
            name     = "verified_email"
            priority = 1
        }
        recovery_mechanism {
            name     = "verified_phone_number"
            priority = 2
        }
    }

    admin_create_user_config {
        allow_admin_create_user_only = false
    }

    email_configuration {
        email_sending_account = "COGNITO_DEFAULT"
    }

    password_policy {
        minimum_length                   = 10
        require_lowercase                = true
        require_numbers                  = true
        require_symbols                  = true
        require_uppercase                = true
        temporary_password_validity_days = 7
    }

    schema {
        attribute_data_type      = "String"
        developer_only_attribute = false
        mutable                  = true
        name                     = "email"
        required                 = true

        string_attribute_constraints {
            max_length = "2048"
            min_length = "0"
        }
    }

    username_configuration {
        case_sensitive = false
    }

    verification_message_template {
        default_email_option  = "CONFIRM_WITH_LINK"
        email_message         = "Your verification code is {####}. "
        email_message_by_link = "Please click the link below to verify your email address. {##Verify Email##} "
        email_subject         = "Your verification code"
        email_subject_by_link = "Your verification link"
        sms_message           = "Your verification code is {####}. "
    }
}





output "pool_arn" {
  value = aws_cognito_user_pool.userpool.arn
}

output "pool_id" {
  value = aws_cognito_user_pool.userpool.id
}
