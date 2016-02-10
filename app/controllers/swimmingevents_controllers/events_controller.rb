#events controller goes here
# The path being defined for this controller action is just "/", meaning 
# the root path. It's the homepage.
MyApp.get "/events" do
  erb :"/ev/events"
  @events = Event.all
end

MyApp.get "/create_event" do
  
  e = Event.new
  e.event_name = params[:neweventname]
  e.save

  erb :"/ev/events"
end

#DB.define_table("events")
#DB.define_column("events","event_name","string")