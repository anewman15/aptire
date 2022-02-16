class BaseAccount < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  # devise :database_authenticatable, :registerable,
  #        :recoverable, :rememberable, :validatable

  def initialize(*args)
    raise 'BaseAccount cannot be instantiated! WTH are you doing dev?' if instance_of(BaseAccount)

    super
  end
end
