class Visit < ApplicationRecord
  belongs_to :attractions
  belongs_to :trip
end
