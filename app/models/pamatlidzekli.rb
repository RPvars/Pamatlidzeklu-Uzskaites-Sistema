class Pamatlidzekli < ApplicationRecord
  # Association
  belongs_to :kategorija

  # Validations
  validates :nosaukums, :razotajs, :kategorija_id, presence: true
  validates :serijas_nummurs, :qr_kods, uniqueness: true, allow_blank: true
  validates :kategorija, presence: true
  validates :izmaksas, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true
end
