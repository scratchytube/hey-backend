class Profile < ApplicationRecord
    belongs_to :picture
    belongs_to :bio
    belongs_to :user
end
