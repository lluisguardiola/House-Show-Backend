class Performer < ApplicationRecord
    has_many :shows
    has_many :events, through: :shows
    has_many :neighborhoods, through: :events
end
