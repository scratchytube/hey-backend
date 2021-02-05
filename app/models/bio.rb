class Bio < ApplicationRecord
    has_many :profiles
    has_many :pictures, through: :profiles
end
