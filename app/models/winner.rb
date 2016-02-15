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

  def find_swimmers
    x = self.finish_id
    y = Finish.find_by_id(x)
    z = y.signup_id
    return z.find_swimmer
  end

  def find_event
    x = self.finish_id
    y = Finish.find_by_id(x)
    z = y.signup_id
    return z.find_event
  end



#DB.define_table("winners")
#DB.define_column("winners","rank_id","integer")
#DB.define_column("winners","finish_id","integer")

#method that determines winner, involving "finish" class
#method that gets event title, rank "first second third" 
#name of swimmer, and their swim time
end