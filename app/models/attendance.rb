class Attendance < ApplicationRecord
  belongs_to :user
  belongs_to :travel

  enum status: %i[pending confirmed rejected]

  def translated_status
    case status.to_s
    when 'pending' then 'En attente'
    when 'confirmed' then 'Confirmé'
    when 'rejected' then 'Refusé'
    end
  end
end
