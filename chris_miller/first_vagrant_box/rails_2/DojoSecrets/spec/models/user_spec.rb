require 'rails_helper'

RSpec.describe User, type: :model do
  context "with valid attributes" do 
    it "should save" do 
      expect(build(:user)).to be_valid
    end
    it 'automatically encrypts the password into the password_digest attribute' do
      expect(build(:user).password_digest.present?).to eq(true)
    end

    it 'email as lowercase' do 
      	expect(create(:user, email: 'EMAIL@GMAIL.COM').email).to eq('email@gmail.com')
    end
  end
  context "with invalid attributes should not save if" do 
    it 'name is blank' do
      expect(build(:user, name: '')).to be_invalid
    end
    it 'email is blank' do
      expect(build(:user, email: '')).to be_invalid
    end
  end
end