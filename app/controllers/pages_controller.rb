class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @sectors= JSON.parse(open("https://api.iextrading.com/1.0/stock/market/sector-performance").read)
    raise
  end
end
