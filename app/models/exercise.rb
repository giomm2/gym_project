class Exercise < ApplicationRecord
  has_many :category_exercises
  has_many :categories, through: :category_exercises
  has_many :exercise_plans
  has_many :plans, through: :exercise_plan
end
