module VacationPackages
  class Packages
   attr_accessor :destination, :resort, :price 
   
   @@all =[]
   @@resorts =[]
   @@prices = []

  def initialize(destination=nil, resort=nil, price=nil)  
    @destination = destination 
    
    @price=price
    @@all << self  
    @@resorts << self
  end 

   
  def self.all 
    @@all 
  end 
  
  
  end 
end 
