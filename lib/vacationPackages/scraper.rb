module VacationPackages
  class Scraper
    
    
     def get_page 
      Nokogiri::HTML(open("https://www.cheapcaribbean.com"))
     end
   
    
     def get_destinations
      self.get_page.css("#deal_DestinationUrl").children.each do |destination|
            VacationPackages::Packages.new(destination)
        end
      end

      def get_resorts
        self.get_page.css("#deal_ResortUrl").children.each_with_index do |scrapedResort, index|
         scrapedResort = scrapedResort.text
          #VacationPackages::Packages.resorts << scrapedResort
          VacationPackages::Packages.all[index] = scrapedResort
          end 
      end 

      def get_pkg_price 
        price = self.get_page.css(".pricePoints.extraLarge")
        price = price.css(".estPrice").text
        price = price.split('$')
        price.shift()
        price.each_with_index do |total_price, index|
          #binding.pry
          VacationPackages::Packages.all[index] = total_price
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


