#events controller goes here

MyApp.get "/newevent" do
  
  e = Event.new
  e.event_name = params[:neweventname]
  e.save

  erb :"/ev/events"
end


MyApp.get "/events" do
  
  @events = Event.all
  erb :"/ev/events"
  
end



#DB.define_table("events")
#DB.define_column("events","event_name","string")