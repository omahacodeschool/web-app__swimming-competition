class Swimmer < ActiveRecord::Base
  #returns all school information that I found relation to the school id
  def school_info
    x = self.school_id
    y = School.find_by_id(x)
    return y
  end

  #returns the school name when referencing the school id
  def school_name
  x = self.school_id
  y = School.find_by_id(x)
  return y.name
end
end

# a = all events swimmer was in
# blank array = []
# a.each do |x|

# get the swimmers row
# go to each table and get the value from each row


# in the result model
# event_name
# take the event id and find the name
# x = event.find_by_id()
# x.name

# a = result.where(swimmer_id => 2)
# event_ids = []
# a.each do |r|
#   event_ids << r.event_ids
# end
# events = []
# event_ids each do |e_id|
#   event.find_by_id(e_id)
# end