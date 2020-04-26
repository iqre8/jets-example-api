class MainAuthorizer < ApplicationAuthorizer
  authorizer(
      name: "MyCognito", # <= name is used as the "function" name
      identity_source: "Authorization", # maps to method.request.header.Authorization
      type: :cognito_user_pools,
      provider_arns: [
                "arn:aws:cognito-idp:eu-west-1:012345678910:userpool/eu-west-1_SomeARN00",
            ],
      )
end

