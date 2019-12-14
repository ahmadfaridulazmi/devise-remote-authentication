
class User
  include ActiveModel::Validations #required because some before_validations are defined in devise
  extend ActiveModel::Callbacks #required to define callbacks
  extend Devise::Models

  define_model_callbacks :validation #required by Devise
  devise :remote_authenticatable

  attr_accessor :id
end