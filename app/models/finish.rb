require 'pry'
class Finish < ActiveRecord::Base

  def find_event
    x = self.signup_id
    y = Signup.find_by_id(x)
    return y.event_id
  end

  def find_swimmer
    x = self.signup_id
    y = Signup.find_by_id(x)
    return y.swimmer_id
  end

  def find_finish_details
    x = self.signup_id
    return Signup.find_by_id(x)
  end
#finish_array returns an array of the finish times in ascending order
  def self.finish_array(eventid)
    x = Finish.where({"event_id" => eventid})
    @finishes = []
      x.each do |timeys|
        @finishes << timeys.finish_time
      end
    firstplace = @finishes[0]
    @firstplacekitten = x.find_by({"finish_time"=> firstplace})
    binding.pry
    return @finishes.sort
  end
  
end

#finish refers to the TIME that the swimmer FINISHED a match
#DB.define_table("finishes")
#DB.define_column("finishes","swimmer_id","integer")
#DB.define_column("finishes","event_id","integer")
#DB.define_column("finishes","finish_time","time")