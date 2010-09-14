class Deal
  attr_accessor :vendor, :vendor_url, :title, :image_url, :url

  def initialize(params)
    self.vendor = params[:vendor]
    self.vendor_url = params[:vendor_url]
    self.title = params[:title]
    self.image_url = params[:image_url]
    self.url = params[:url]
  end

  def to_json(*a)
    {
      'json_class' => self.class.name,
      'data' => [ vendor, vendor_url, title, image_url, url ]
    }.to_json(*a)
  end

  def self.json_create(o)
    new(*o['data'])
  end
end
