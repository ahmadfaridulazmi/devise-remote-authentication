module Devise
  module Strategies
    class RemoteAuthenticatable < Authenticatable
      def valid?
        authorization_token.present?
      end

      def authenticate!
        resource = mapping.to.new
        return fail! unless resource

        if validate(resource){ resource.remote_authentication(authorization_token) }
            success!(resource)
        end
      end

      private

      def authorization_token
        env['HTTP_AUTHORIZATION'].to_s.remove('Bearer ')
      end
    end
  end
end

Warden::Strategies.add(:remote_authenticatable, Devise::Strategies::RemoteAuthenticatable)
