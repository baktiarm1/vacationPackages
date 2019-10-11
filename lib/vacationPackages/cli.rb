# require 'pry'
# require 'open-uri'
# require 'nokogiri'
module VacationPackages  
  class CLI 
    
    def call
      VacationPackages::Scraper.new.make_packages
      puts 'Would you like to see todays destination Vacation Packages? Y/N'
      input = gets 
       if input == 'y'
        start
       else 
        puts "Thank you, come again"
       end 
    end
    
    
   
  
  end 
end 

