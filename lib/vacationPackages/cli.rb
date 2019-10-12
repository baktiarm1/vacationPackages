# require 'pry'
# require 'open-uri'
# require 'nokogiri'
module VacationPackages  
  class CLI 
    
    def call
      puts ''
      puts 'Would you like to see todays destination Vacation Packages? Y/N'
      puts ''
      input = gets.strip 
       if input == 'y'
        start
       else 
        good_bye
       end 
    end

    def good_bye
      puts 'Thank You, come again'
    end 

   

    def start
      VacationPackages::Scraper.new.get_destinations
      
      puts ""
      puts "Which destination would you like to go to? Please pick a number"
      puts ""
        print_destinations
        input = gets.strip
        print_resort(input.to_i)
    end 
    
    def print_destinations
      VacationPackages::Packages.all.each_with_index do |pkg, index|
        puts "#{index+1}. #{pkg.destination}"
        puts ''
      end 
    end 
    
    def print_resort(num)
      VacationPackages::Scraper.new.get_resorts
      puts "You will be staying at the #{VacationPackages::Packages.all[num-1]}"
      puts ""
      
      puts 'Would you like to know the total package price with airfare? Y/N'
      puts ""
        input = gets.strip
        if input == 'y'
          print_price
        else 
          good_bye
        end 
    end  
    
    def print_price(num)
      puts 'This da price'
    end 

  end 
end 

