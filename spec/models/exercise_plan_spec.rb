require 'rails_helper'

RSpec.describe ExercisePlan, type: :model do
  it { is_expected.to belong_to(:exercise) }
  it { is_expected.to belong_to(:plan) }
end
