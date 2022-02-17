class BaseAccount < ApplicationRecord
  # Include default devise modules. Others available are:
  # :registerable, :recoverable, :rememberable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :confirmable, :validatable

  def initialize(*args)
    raise 'BaseAccount cannot be instantiated! WTH are you doing dev?' if instance_of?(BaseAccount)

    super
  end
end
