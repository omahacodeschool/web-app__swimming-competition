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
    x[0..2]
  end
    
end

