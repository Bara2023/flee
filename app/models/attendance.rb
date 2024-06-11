class Attendance < ApplicationRecord
  belongs_to :user
  belongs_to :travel

  enum status: %i[pending confirmed rejected]

end
