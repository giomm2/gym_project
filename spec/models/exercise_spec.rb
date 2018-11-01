require 'rails_helper'

RSpec.describe Exercise, type: :model do
  it { is_expected.to have_many(:categories) }
  it { is_expected.to have_many(:category_exercises) }
  it { is_expected.to have_many(:exercise_plans) }
end
