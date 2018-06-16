require 'rails_helper'

RSpec.describe Article, type: :model do

  it { should validate_presence_of(:title) }

  it { should validate_length_of(:title).
      is_at_least(3) }

  it { should validate_length_of(:title).
      is_at_most(50) }

  it { should validate_presence_of(:description) }

  it { should validate_length_of(:description).
      is_at_least(10) }

  it { should validate_length_of(:description).
      is_at_most(300) }
end