class Search < ApplicationRecord
  belongs_to :user
  attr_accessor :date_range


  has_one_attached :photo # à potentiellement changer plus tard en has_many

  validates :airport_start, presence: true
end
