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
    y = SignupResult.where({"rank" => nil})
    if y.empty?
      return x[0..2]
    else
      return "Event not over"
    end
  end

    def event_locked?
    self.lock
    end
end

