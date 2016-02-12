require 'pry'
MyApp.get "/newevent" do
  
  e = Event.new
  e.event_name = params[:neweventname]
  e.save
  neweventname = params[:neweventname]
  erb :"/ev/eventaddsuccess"

end


MyApp.get "/events" do
  
  @events = Event.all
  erb :"/ev/events"
  
end



#DB.define_table("events")
#DB.define_column("events","event_name","string")