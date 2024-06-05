class Travel < ApplicationRecord
  belongs_to :user
  MOODS = ["Sport", "Culture", "Détente"]
end
