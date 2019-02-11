class SuperHero
  attr_reader :name, :power, :biography
  
  @@all = []
  
  def initialize(params)
    @name = params[:name]
    @power = params[:power]
    @bio = params[:bio]
    self.save
  end
  
  def self.all
    @@all 
  end
  
  def save
    self.class.all << self
  end
  
end