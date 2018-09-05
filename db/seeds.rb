# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'open-uri'
Stock.destroy_all

#number_to_currency(price, :unit => "€")

financials = JSON.parse(open('https://api.iextrading.com/1.0/stock/market/collection/sector?collectionName=Financials').read)
financials.each do |stock|
  Stock.create(ticker: stock["symbol"], price:stock["latestPrice"], market_cap: stock["marketCap"], sector: "Financials")
end

utilities = JSON.parse(open('https://api.iextrading.com/1.0/stock/market/collection/sector?collectionName=Utilities').read)
utilities.each do |stock|
  Stock.create(ticker: stock["symbol"], price: stock["latestPrice"], market_cap: stock["marketCap"], sector: "Utilities")
end

consumer_discretionary = JSON.parse(open('https://api.iextrading.com/1.0/stock/market/collection/sector?collectionName=Consumer Discretionary').read)
consumer_discretionary.each do |stock|
  Stock.create(ticker: stock["symbol"], price: stock["latestPrice"], market_cap: stock["marketCap"], sector: "Consumer Discretionary")
end

consumer_staples = JSON.parse(open('https://api.iextrading.com/1.0/stock/market/collection/sector?collectionName=Consumer Staples').read)
consumer_staples.each do |stock|
  Stock.create(ticker: stock["symbol"], price: stock["latestPrice"], market_cap: stock["marketCap"], sector: "Consumer Staples")
end

energy = JSON.parse(open('https://api.iextrading.com/1.0/stock/market/collection/sector?collectionName=Energy').read)
energy.each do |stock|
  Stock.create(ticker: stock["symbol"], price: stock["latestPrice"], market_cap: stock["marketCap"], sector: "Energy")
end

healthcare = JSON.parse(open('https://api.iextrading.com/1.0/stock/market/collection/sector?collectionName=Healthcare').read)
healthcare.each do |stock|
  Stock.create(ticker: stock["symbol"], price: stock["latestPrice"], market_cap: stock["marketCap"], sector: "Healthcare")
end

industrials = JSON.parse(open('https://api.iextrading.com/1.0/stock/market/collection/sector?collectionName=Industrials').read)
industrials.each do |stock|
  Stock.create(ticker: stock["symbol"], price: stock["latestPrice"], market_cap: stock["marketCap"], sector: "Industrials")
end

tech = JSON.parse(open('https://api.iextrading.com/1.0/stock/market/collection/sector?collectionName=Technology').read)
tech.each do |stock|
  Stock.create(ticker: stock["symbol"], price: stock["latestPrice"], market_cap: stock["marketCap"], sector: "Technology")
end

telecom = JSON.parse(open('https://api.iextrading.com/1.0/stock/market/collection/sector?collectionName=Telecom').read)
telecom.each do |stock|
  Stock.create(ticker: stock["symbol"], price: stock["latestPrice"], market_cap: stock["marketCap"], sector: "Telecom")
end

materials = JSON.parse(open('https://api.iextrading.com/1.0/stock/market/collection/sector?collectionName=Materials').read)
materials.each do |stock|
  Stock.create(ticker: stock["symbol"], price: stock["latestPrice"], market_cap: stock["marketCap"], sector: "Materials")
end

real_estate = JSON.parse(open('https://api.iextrading.com/1.0/stock/market/collection/sector?collectionName=Real Estate').read)
real_estate.each do |stock|
  Stock.create(ticker: stock["symbol"], price: stock["latestPrice"], market_cap: stock["marketCap"], sector: "Real Estate")
end
