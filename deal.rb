class Deal
  attr_accessor :vendor, :title, :code, :amount, :image_url, :url

  def initialize(params)
    self.vendor = params[:vendor]
    self.title = params[:title]
    self.code = params[:code]
    self.amount = params[:amount]
    self.image_url = params[:image_url]
    self.url = params[:url]
  end
end
