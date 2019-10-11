# require 'pry'
# require 'open-uri'
# require 'nokogiri'

module VacationPackages
  class Scraper
    
    
     def get_page 
      Nokogiri::HTML(open("https://www.cheapcaribbean.com"))
     end
   
    
     def make_packages
      self.get_page.css("#deal_ResortUrl").children.each do |pkg|
       VacationPackages::Packages.new
      end
     end 
       
    # def get_deals
    #   resorts = self.get_page.css("#deal_ResortUrl").children
    #   destinations = self.get_page.css("#deal_DestinationUrl").children
    #   price = self.get_page.css(".pricePoints.extraLarge").first.css(".estPrice").text
    #   puts price 
    # end 

 end 
end 
# pkg = VacationPackages::Scraper.new

# puts pkg.get_deals

