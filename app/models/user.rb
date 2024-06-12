class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :travels, dependent: :destroy
  has_many :searches, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :chatrooms_as_user_1, class_name: "Chatroom", foreign_key: :user_1_id, dependent: :destroy
  has_many :chatrooms_as_user_2, class_name: "Chatroom", foreign_key: :user_2_id, dependent: :destroy
  has_many :attendances, dependent: :destroy
  has_many :attended_travels, through: :attendances, class_name: "Travel", foreign_key: "travel_id"
  has_many :travels_as_attendant, -> { where(attendances: { status: 'confirmed' }) }, through: :attendances, source: :travel
  has_many :liked_travels, through: :searches
  has_many :reviews, class_name: 'Review', foreign_key: :user_id
  has_many :written_reviews, class_name: 'Review', foreign_key: :author_id
  has_one_attached :photo

  def chatrooms
    Chatroom.where("user_1_id = :id OR user_2_id = :id", id: self.id)
  end

  def conversations
    (chatrooms + travels_as_attendant).sort_by(&:created_at).reverse
  end

  def chatroom(other_user)
    chatroom = Chatroom.find_by(user_1: self, user_2: other_user)
    return chatroom if chatroom.present?

    chatroom = Chatroom.find_by(user_2: self, user_1: other_user)
    return chatroom if chatroom.present?

    Chatroom.create(user_1: self, user_2: other_user)
  end
end
