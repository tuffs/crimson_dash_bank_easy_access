require 'rails_helper'

RSpec.describe User, type: :model do
  it "is valid with valid attributes" do
    user = FactoryBot.build(:user)
    expect(user).to be_valid
  end

  it "is invalid without a username" do
    user = FactoryBot.build(:user, username: nil)
    expect(user).not_to be_valid
  end

  it "can be an admin" do
    admin = FactoryBot.build(:user, admin: true)
    expect(admin.admin?).to be true
  end
end