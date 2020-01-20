class Neighborhood < ApplicationRecord
    has_many :events
    has_many :shows, through: :events
    has_many :performers, through: :shows
end
