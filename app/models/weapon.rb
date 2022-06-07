class Weapon < ApplicationRecord
  validates :class_, presence: true
  validates :name, presence: true
  validates :mag, presence: true
  validates :phy, presence: true
  validates :skill, presence: true
end