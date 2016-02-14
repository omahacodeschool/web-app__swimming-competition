class Swimmer < ActiveRecord::Base

  def get_school_name
    x = self.school_id
    y = School.find_by_id(x)
    return y.name
  end



#   def get_all_events

#     @swim_id = self.id
#     event_ids = []

#     a = Signup.where ({"swimmer_id" => @swim_id})
    

#     a.each do |r|
#       event_ids << r.event_ids
#     end 
    
#     events = []

#     event_ids.each do |e|
#     events << Event.find_by_id(e)
#     end

#   end

 end
