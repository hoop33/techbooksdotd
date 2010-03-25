class Deal
  attr_accessor :vendor, :title, :amount, :image_url, :url

  def initialize(params)
    self.vendor = params[:vendor]
    self.title = params[:title]
    self.amount = params[:amount]
    self.image_url = params[:image_url]
    self.url = params[:url]
  end
end
