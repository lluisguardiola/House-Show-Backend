class Event < ApplicationRecord
  belongs_to :neighborhood
  has_many :shows 
end
