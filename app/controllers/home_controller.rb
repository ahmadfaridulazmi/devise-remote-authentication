class HomeController < ApplicationController
  before_action :authenticate!, only: :manage

  def index
    p '>>>>>>>>>>>>>>>'
    p warden
  end

  def manage; end
end
