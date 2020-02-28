class Heroine < ApplicationRecord
    has_many :powers

    validates :name, presence: true
    validates :super_name, presence: true

end
