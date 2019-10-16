module VacationPackages
  class Packages
   attr_accessor :destination, :resort, :price 
   #macros^
   
   @@all =[]
   @@resorts =[]
   @@prices = []

  def initialize(destination=nil, resort=nil, price=nil)  
    @destination = destination 
    #instance var
    @price=price
    @resort=resort
    @@all << self  
  end 

   
  def self.all 
    @@all 
  end 
  
  def self.clear 
    @@all.clear
  end 
  
  end 
end 
