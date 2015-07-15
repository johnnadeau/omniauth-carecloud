require "omniauth-carecloud/version"
require "omniauth-oauth2"

module OmniAuth
  module Strategies
    class CareCloud < OmniAuth::Strategies::OAuth2
      include OmniAuth::Strategy
      option :client_options, {
        site: "https://api.carecloud.com",
        authorize_url: "https://api.carecloud.com/v2/oauth2/authorization",
        token_url: "https://api.carecloud.com/v2/oauth2/token_info"
      }
    end
  end
end
