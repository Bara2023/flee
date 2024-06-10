class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :travels
  has_many :searches
  has_many :messages

  has_one_attached :photo
  has_many :attendances
  has_many :attended_travels, through: :attendances, class_name: "Travel", foreign_key: "travel_id"
end
