require "omniauth-carecloud/version"
require "omniauth-oauth2"

module OmniAuth
  module Strategies
    class CareCloud < OmniAuth::Strategies::OAuth2
      include OmniAuth::Strategy
      option :client_options, {
        site: "https://api.carecloud.com",
        authorize_url: "https://api.carecloud.com/oauth2/authorize",
        token_url: "https://api.carecloud.com/oauth2/access_token"
      }
    end
  end
end

OmniAuth.config.add_camelization "carecloud", "CareCloud"
