MyApp.post "/events" do
  x = Event.new
  x.event = params["event"]
  x.save
  @y = [x.event]
  erb :"events/events"
end

MyApp.get "/all_events" do 
  @events = Event.all
  erb :"events/events_list"
end 

MyApp.get "/view_event/:event_id" do 
  @event = Event.find_by_id(params[:event_id])
  erb :"events/single_event"
end


