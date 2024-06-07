class Travel < ApplicationRecord
  belongs_to :user
  MOODS = ["Sport", "Culture", "Détente", "Aventure"]

  validates :airport_start, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :budget_max, presence: true
  validates :destination, presence: true
  validates :mood, presence: true
  validates :age, presence: true

end
