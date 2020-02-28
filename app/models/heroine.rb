class Heroine < ApplicationRecord
    has_many :heroines_powers
    has_many :powers, through: :heroines_powers

    accepts_nested_attributes_for :heroines_powers, :powers

    validates :name, presence: true
    validates :super_name, presence: true
end
