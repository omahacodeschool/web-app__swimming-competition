require 'pry'
MyApp.post "/newevent" do
  
  e = Event.new
  e.event_name = params[:neweventname]
  e.save
  @neweventname = params[:neweventname]
  erb :"/ev/eventaddsuccess"

end


MyApp.get "/events" do
  
  @events = Event.all
  erb :"/ev/events"
  
end

MyApp.get "/view_event/:id" do
  @currentevent = Event.find_by_id(params[:id])
  @signups = Signup.all
  z = Signup.where({"event_id" => (params[:id])})
  @swimmers = []
  z.each do |banana|
    @swimmers << banana.find_swimmer_name
  end
  #binding.pry
  erb :"/ev/view_event"
end

MyApp.post "/delete_event/:id" do
  @event = Event.find_by_id(params[:id])
  x = Signup.where({"event_id" => (params[:id])})
  binding.pry
  if x == []
    @event.delete
    erb :"/cv/deletesuccess"
  else 
    erb :"/ev/deletefail"
  end
end



#DB.define_table("events")
#DB.define_column("events","event_name","string")