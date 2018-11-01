class CategoryExercise < ApplicationRecord
    belongs_to :exercise
    belongs_to :category
end
