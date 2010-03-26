class Deal
  attr_accessor :vendor, :date, :title, :amount, :image_url, :url, :notes

  def initialize(params)
    self.vendor = params[:vendor]
    self.date = params[:date]
    self.title = params[:title]
    self.amount = params[:amount]
    self.image_url = params[:image_url]
    self.url = params[:url]
    self.notes = params[:notes]
  end
end
