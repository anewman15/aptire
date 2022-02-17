class Company < BaseAccount
  validates :email, presence: true
  validates :username, presence: true, length: { in: 3..150 }
  validates :password, presence: true, length: { in: 6..50 }
end
