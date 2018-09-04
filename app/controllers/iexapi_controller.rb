class IexapiController < ApplicationController
  def financials
    financials = https://api.iextrading.com/1.0/stock/market/collection/sector?collectionName=Financials
  end
  def utilities
    utilities = https://api.iextrading.com/1.0/stock/market/collection/sector?collectionName=Utilities
  end
  def consumer_discretionary
    consumer_discretionary = https://api.iextrading.com/1.0/stock/market/collection/sector?collectionName=Consumer Discretionary
  end
  def consumer_staples
    consumer_staples = https://api.iextrading.com/1.0/stock/market/collection/sector?collectionName=Consumer Staples
  end
  def energy
    energy = https://api.iextrading.com/1.0/stock/market/collection/sector?collectionName=Energy
  end
  def healthcare
    healthcare = https://api.iextrading.com/1.0/stock/market/collection/sector?collectionName=Healthcare
  end
  def industrials
    industrials = https://api.iextrading.com/1.0/stock/market/collection/sector?collectionName=Industrials
  end
  def tech
    tech = https://api.iextrading.com/1.0/stock/market/collection/sector?collectionName=Technology
  end
  def telecom
    telecom = https://api.iextrading.com/1.0/stock/market/collection/sector?collectionName=Telecom
  end
  def materials
    materials = https://api.iextrading.com/1.0/stock/market/collection/sector?collectionName=Materials
  end
  def real_estate
    real_estate = https://api.iextrading.com/1.0/stock/market/collection/sector?collectionName=Real Estate
  end
end
