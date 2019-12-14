class ApplicationController < ActionController::Base
  def authenticate!
    warden.authenticate!(:remote_authenticatable)
  end
end
