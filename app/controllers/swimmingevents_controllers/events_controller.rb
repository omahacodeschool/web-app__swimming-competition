require 'pry'
MyApp.post "/newevent" do
  
  e = Event.new
  e.event_name = params[:neweventname]
  e.locked = false
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
  @signups = Signup.where({"event_id" => (params[:id])})
  erb :"/ev/view_event"
end

MyApp.get "remove_swimmer/:id" do
  @currentswimmer = Swimmer.find_by_id(params[:id])
  @currentevent = @currentevent
  erb :"/cv/remove_swimmer"
end

MyApp.get "/lock_event/:id" do
  @currentevent = Event.find_by_id(params[:id])
  erb :"/ev/lock_event"
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

MyApp.post "/confirmlock/:id" do
  @event = Event.find_by_id(params[:id])
  @event.locked = true
  @event.save
  @events = Event.all
  erb :"/ev/events"
end



#DB.define_table("events")
#DB.define_column("events","event_name","string")