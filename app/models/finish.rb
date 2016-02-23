require 'pry'
class Finish < ActiveRecord::Base

#finish_array returns an array of the finish times in ascending order
  def self.finish_array(eventid)
    x = Finish.where({"event_id" => eventid})
    @finishes = []
      x.each do |timeys|
        @finishes << timeys.finish_time
      end
    return @finishes.sort
  end

  def self.this_event(eventid)
    x = Finish.where({"event_id" => eventid})
    @finishes = []
      x.each do |ids|
        @finishes << ids.id
      end
    return @finishes
  end

end

#finish refers to the TIME that the swimmer FINISHED a match
#DB.define_table("finishes")
#DB.define_column("finishes","swimmer_id","integer")
#DB.define_column("finishes","event_id","integer")
#DB.define_column("finishes","finish_time","time")