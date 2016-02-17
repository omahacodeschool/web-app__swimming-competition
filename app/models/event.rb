class Event < ActiveRecord::Base

  def swimmers
    x = SignupResult.where({"event_id" => self.id})
    swimmers = []
    x.each do |y|
      swimmers << y.swimmer_info_id 
    end

    SwimmerInfo.where({"id" => swimmers})
  end

  def top_three
    x = SignupResult.where({"event_id" => self.id}).order("rank")
    #top_three = []
    #top_three << x[0..2]
    #binding.pry
    #if top_three.rank == nil

    #  return nil 
    #else 
    x[0..2]
    #end
    #binding.pry
  end
    
end

