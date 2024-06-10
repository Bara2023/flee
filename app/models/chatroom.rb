class Chatroom < ApplicationRecord
  belongs_to :user_1, class_name: "User", foreign_key: "user_1_id"
  belongs_to :user_2, class_name: "User", foreign_key: "user_2_id"

  has_many :messages, dependent: :destroy

  def other_user(current_user)
    return user_1 if user_1 != current_user

    user_2
  end
end
