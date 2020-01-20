class Event < ApplicationRecord
  belongs_to :neighborhood
  has_many :shows
  has_many :performers, through: :shows
end
