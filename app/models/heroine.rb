class Heroine < ApplicationRecord
    validates :name, presence:  true
    validates :super_name, uniqueness: true
    

    has_many :powers
end
