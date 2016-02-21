class Winner < ActiveRecord::Base

  def places
    x = self.rank_id
    y = Rank.find_by_id(x)
    return y.rank_name
  end

  def find_time
    x = self.finish_id
    y = Finish.find_by_id(x)
    return y.finish_time
  end

  def find_swimmer
    x = self.finish_id
    y = Finish.find_by_id(x)
    swimmer = Swimmer.find_by_id(y.swimmer_id)
    return swimmer.swimmer_name
  end
  
   def self.this_event 
    @finishes = []
      x = Winner.all
      x.each do |finishid|
        @finishes << finishid.finish_id
      end
    return @finishes
  end


#DB.define_table("winners")
#DB.define_column("winners","rank_id","integer")
#DB.define_column("winners","finish_id","integer")

#method that determines winner, involving "finish" class
#method that gets event title, rank "first second third" 
#name of swimmer, and their swim time
end