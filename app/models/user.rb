class User < ApplicationRecord
  has_secure_password

  has_many :trips
  has_many :attactions, through: :trips
  has_many :locations, through: :trips
  belongs_to :hometown, class_name: "Location"
  has_many :comments
end
