require 'json'
require 'open-uri'
class StocksController < ApplicationController
  def financials
    @financials = Stock.all.where(sector: "Financials")
  end
  def financials_show
    @financial = Stock.find(params[:id])
    @company = JSON.parse(open("https://api.iextrading.com/1.0/stock/#{@financial.ticker}/company").read)
    @news = JSON.parse(open("https://api.iextrading.com/1.0/stock/#{@financial.ticker}/news").read)
  end
  def utilities
    @utilities = Stock.all.where(sector: "Utilities")
  end
  def consumer_discretionary
    @consumer_discretionary = Stock.all.where(sector: "Consumer Discretionary")
  end
  def consumer_staples
    @consumer_staples = Stock.all.where(sector: "Consumer Staples")
  end
  def energy
    @energy = Stock.all.where(sector: "Energy")
  end
  def healthcare
    @healthcare = Stock.all.where(sector: "Healthcare")
  end
  def industrials
    @industrials = Stock.all.where(sector: "Industrials")
  end
  def tech
    @tech = Stock.all.where(sector: "Technology")
  end
  def telecom
    @telecom = Stock.all.where(sector: "Telecom")
  end
  def materials
    @materials = Stock.all.where(sector: "Materials")
  end
  def real_estate
    @real_estate = Stock.all.where(sector: "Real Estate")
  end
end
