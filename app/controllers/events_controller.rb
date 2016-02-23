MyApp.get "/events/new" do
  erb :"events/new_event"
end

MyApp.post "/events/create" do
  @event = Event.new
  @event.name = params["new_event"] 
  @event.num_entries = params["new_entries"]
  @event.start_time = params["new_time"]

  if @event.is_valid
    @event.save
    redirect "/events"
  else 
    erb :"events/error"
  end

end

MyApp.get "/events" do
  @events = Event.all
  erb :"events/all_events"
end

MyApp.get "/events/edit/:id" do
  @event = Event.find_by_id(params[:id])
  erb :"events/edit_event"
end

MyApp.post "/events/process_edit/:id" do
  @event = Event.find_by_id(params[:id])
  @event.name = params["edit_event"]
  @event.num_entries = params["edit_entries"]
  @event.start_time = params["edit_time"]
  if @event.is_valid
    @event.save
    erb :"updated"
  else 
    erb :"events/error"
  end
end  

MyApp.post "/events/delete/:id" do
  @event = Event.find_by_id(params[:id])
  @event.delete
  erb :"updated"
end

MyApp.post "/events/lock/:id" do
  @events = Event.find_by_id(params[:id])
  @events.locked = true
  @events.save
  erb :"updated"
end
