class BaseAccount < ApplicationRecord
  include Devise::JWT::RevocationStrategies::Allowlist

  # Include default devise modules. Others available are:
  # :registerable, :recoverable, :rememberable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :confirmable, :validatable,  :jwt_authenticatable, jwt_revocation_strategy: self

  def initialize(*args)
    raise 'BaseAccount cannot be instantiated! WTH are you doing dev?' if instance_of?(BaseAccount)

    super
  end
end
