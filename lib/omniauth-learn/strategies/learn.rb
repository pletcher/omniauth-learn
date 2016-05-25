require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Learn < OmniAuth::Strategies::OAuth2
      include OmniAuth::Strategy

      option :client_options, {
               site: "https://learn.co",
               authorize_url: "https://learn.co/oauth/authorize",
               token_url: "https://learn.co/oauth/token"
             }

      def request_phase
        super
      end

      info do
        raw_info.merge("token" => access_token.token)
      end

      uid { raw_info["id"] }

      def raw_info
        @raw_info ||= access_token.get('/api/v1/users/me').parsed
      end
    end
  end
end
