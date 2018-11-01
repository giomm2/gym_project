class Category < ApplicationRecord
  has_many :category_exercises
  has_many :exercises, through: :category_exercise
end
