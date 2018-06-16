require 'rails_helper'

RSpec.describe User, type: :model do

  it { should have_many(:articles) }

  it { should validate_presence_of(:username) }
  it { should validate_uniqueness_of(:username).case_insensitive }
  it { should validate_length_of(:username).
      is_at_least(3) }
  it { should validate_length_of(:username).
      is_at_most(25) }

  it { should validate_presence_of(:email) }
  it { should validate_uniqueness_of(:email).case_insensitive }
  it { should validate_length_of(:email).
      is_at_most(105) }

end