class BearBed < ApplicationRecord
    has_many_attached :images
    has_many :reviews
    has_many :ratings
end
