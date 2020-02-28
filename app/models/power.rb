class Power < ApplicationRecord
    has_one :heroinepower
    has_many :heroine, through: :heroinepower
end
