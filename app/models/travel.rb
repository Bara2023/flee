class Travel < ApplicationRecord
  belongs_to :user

  has_one_attached :photo
  has_many :messages, dependent: :destroy
  has_many :attendances, dependent: :destroy

  MOODS = ["Sport", "Culture", "Détente", "Aventure"]

  validates :airport_start, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true
  validates :budget_max, presence: true
  validates :destination, presence: true
  validates :mood, presence: true
  validates :age, presence: true

  after_create :create_attendance

  def user_has_attended?(user)
    attendances.exists?(user: user)
  end

  def create_attendance
    self.attendances.create(user: self.user)
  end
end
