class Picture < ApplicationRecord
    has_many :profiles
    has_many :bios, through: :profiles

end
