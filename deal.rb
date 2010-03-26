class Deal
  attr_accessor :vendor, :title, :image_url, :url, :notes

  def initialize(params)
    self.vendor = params[:vendor]
    self.title = params[:title]
    self.image_url = params[:image_url]
    self.url = params[:url]
    self.notes = params[:notes]
  end
end
