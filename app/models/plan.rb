class Plan < ApplicationRecord
  has_many :exercise_plans
  has_many :exercises, through: :exercise_plan
  belongs_to :objective
end
