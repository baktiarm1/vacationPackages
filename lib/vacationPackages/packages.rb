module VacationPackages
  class Packages
   attr_accessor :resort, :destination, :price 
   
   @@all =[]
   @@all << self 

  

   
   
  def self.all 
    @@all 
  end 
  
  
  end 
end 
