class Deal
  attr_accessor :vendor_name, :vendor_id, :vendor_url, :title, :image_url, :url

  def initialize(params)
    self.vendor_name = params[:vendor_name]
    self.vendor_id = params[:vendor_id]
    self.vendor_url = params[:vendor_url]
    self.title = params[:title]
    self.image_url = params[:image_url]
    self.url = params[:url]
  end

  def to_json(*a)
    {
      :vendor_name => self.vendor_name,
      :vendor_id => self.vendor_id,
      :vendor_url => self.vendor_url,
      :title => self.title,
      :image_url => self.image_url,
      :url => self.url
    }.to_json(*a)
  end
end
