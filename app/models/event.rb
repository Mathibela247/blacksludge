class Event < ApplicationRecord
    include Rails.application.routes.url_helpers

    belongs_to :customer
    belongs_to :user
    has_many :event_type
    has_many :invitation_rsvps
    has_one_attached :qrcode, dependent: :destroy

    before_commit :generate_qrcode, on: :create

    has_event_calendar

    broadcasts_to ->(event) { "events" }, inserts_by: :prepend

    private

    def generate_qrcode
        
        # Get the host
        host = Rails.application.config.action_controller.default_url_options[:host]
        # Create the QRCode object
        qrcode = RQRCode::QRCode.new(event_url(self, host:))
        # Create the png object
        png = qrcode.as_png(
            bit_depth: 1,
            border_modules: 4,
            color_mode: ChunkyPNG::COLOR_GRAYSCALE,
            color: "black",
            file: nil,
            fill: "white",
            module_px_size: 6,
            resize_exactly_to: false,
            resize_gte_to: false,
            size: 120 
        )

        self.qrcode.attach(
            io: StringIO.new(png.to_s),
            filename: "qrcode.png",
            content_type: "image/png"
        )
    end

end
