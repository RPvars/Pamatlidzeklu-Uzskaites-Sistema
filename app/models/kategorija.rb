class Kategorija < ApplicationRecord
  validates :nosaukums, presence: true, uniqueness: true
end
