class Hero 
  attr_accessor :name, :power, :bio 
  
  def initialize(args)
    @name = args[:name]
    @power = args[:power]
  end
  
end