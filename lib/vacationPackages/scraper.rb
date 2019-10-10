require 'pry'
require 'open-uri'
require 'nokogiri'

module VacationPackages
  class Scraper
    
     def get_page 
      Nokogiri::HTML(open("https://www.cheapcaribbean.com"))
     end
  
   def get_deals
     resorts = self.get_page.css("#deal_ResortUrl").children
     destinations = self.get_page.css("#deal_DestinationUrl").children
     price = doc.css(".pricePoints.extraLarge").first.css(".estPrice").text
   end 
   
    end 
end 

pkg = VacationPackages::Scraper.new

puts pkg.get_page

