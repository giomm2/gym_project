require 'rails_helper'

RSpec.describe Objective, type: :model do
  it { is_expected.to have_many(:plans) }
end
