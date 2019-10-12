module VacationPackages
  class Packages
   attr_accessor :resort, :destination, :price 
   
   @@all =[]
  

  def initialize(destination, resort=nil, price=nil)  
    @destination = destination 
    @resort=resort
    @price=price
    @@all << self  
  end 

   
  def self.all 
    @@all 
  end 
  
  
  end 
end 
