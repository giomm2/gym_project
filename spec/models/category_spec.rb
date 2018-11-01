require 'rails_helper'

RSpec.describe Category, type: :model do
  it { is_expected.to have_many(:exercises) }
  it { is_expected.to have_many(:category_exercises) }
end
