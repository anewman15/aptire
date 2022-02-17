require 'rails_helper'

RSpec.describe CompanyAccount, type: :model do
  describe 'validations' do
    subject { FactoryBot.build(:user_account) }

    it { should validate_presence_of(:email) }
    it { should validate_length_of(:email) }

    it { should validate_presence_of(:username) }
    it { should validate_length_of(:username) }

    it { should validate_presence_of(:password) }
    it { should validate_length_of(:password) }

    it { should validate_confirmation_of(:password) }
  end
end
