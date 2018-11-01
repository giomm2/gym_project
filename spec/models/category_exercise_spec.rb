require 'rails_helper'

RSpec.describe CategoryExercise, type: :model do
  it { is_expected.to belong_to(:category) }
  it { is_expected.to belong_to(:exercise) }
end
