class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :travels
  has_many :searches

  has_many :liked_travels, through: :searches

  has_one_attached :photo
  has_many :attendancies
end
