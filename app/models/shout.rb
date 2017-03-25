class Shout < ApplicationRecord
    validates :content, presence: true
end
