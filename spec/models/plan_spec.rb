require 'rails_helper'

RSpec.describe Plan, type: :model do
  it { is_expected.to have_many(:exercise_plans) }
  it { is_expected.to belong_to(:objective) }
end
