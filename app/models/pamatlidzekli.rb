class Pamatlidzekli < ApplicationRecord
  searchkick
  include Rails.application.routes.url_helpers
  
  # Associations
  belongs_to :kategorija
  has_one_attached :qrcode, dependent: :destroy

  # Validations
  validates :nosaukums, :razotajs, :kategorija_id, presence: true
  validates :serijas_nummurs, uniqueness: true, allow_blank: true
  validates :kategorija, presence: true
  validates :izmaksas, numericality: { greater_than_or_equal_to: 0 }, allow_nil: true

  # Callbacks
  before_commit :generate_qrcode, on: :create

  private

  def generate_qrcode
    # Get the host
    host = Rails.application.config.action_controller.default_url_options[:host]
    
    generated_url = pamatlidzekli_url(self, host: host) 
    
    # Create the QRCode object
    qrcode = RQRCode::QRCode.new(generated_url)
    
    # Create the PNG object
    png = qrcode.as_png(
      bit_depth: 1,
      border_modules: 4,
      color_mode: ChunkyPNG::COLOR_GRAYSCALE,
      color: "black",
      fill: "white",
      module_px_size: 6,
      size: 120
    )
    
    # Prepare for attachment
    io = StringIO.new(png.to_s)
    io.set_encoding('binary')
    
    self.qrcode.attach(
      io: io,
      filename: "qrcode-#{Time.zone.now.to_i}.png",
      content_type: "image/png"
    )
  end
end
