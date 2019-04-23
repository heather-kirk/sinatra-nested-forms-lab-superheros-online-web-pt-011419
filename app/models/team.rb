class Team
  
  attr :name, :motto 
  
  TEAM = [] 
  
  def initialize(name, motto)
    @name = params[:name]
    @motto = params[:motto]
    TEAM << self 
  end 
  
  def self.all 
    TEAM
  end 
  
end 