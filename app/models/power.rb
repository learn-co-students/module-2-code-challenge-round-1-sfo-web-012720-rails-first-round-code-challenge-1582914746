class Power < ApplicationRecord
    has_many :heroine_powers, dependent: :destroy 
    has_many :heroines, through: :heroine_powers
end
