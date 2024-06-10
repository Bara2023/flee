class Message < ApplicationRecord
  belongs_to :user
  belongs_to :chatroom, optional: true
  belongs_to :travel, optional: true

  validate :chatroom_or_travel

  def sender?(a_user)
    user.id == a_user.id
  end

  private

  def chatroom_or_travel
    if chatroom.nil? && travel.nil?
      errors.add(:base, "Message must belong to a chatroom or a travel")
    end
    if chatroom.present? && travel.present?
      errors.add(:base, "Message cannot belong to both a chatroom and a travel")
    end
  end
end
