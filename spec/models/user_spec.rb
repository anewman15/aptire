require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    subject { FactoryBot.build(:user) }

    it { should validate_presence_of(:email) }
    it { should validate_length_of(:email) }

    it { should validate_presence_of(:username) }
    it { should validate_length_of(:username) }

    it { should validate_presence_of(:password) }
    it { should validate_length_of(:password) }

    it { should validate_confirmation_of(:password) }
  end
end
