class LikedTravel < ApplicationRecord
  belongs_to :search
  belongs_to :travel
end
