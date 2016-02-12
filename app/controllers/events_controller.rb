MyApp.get "/events/new" do
  erb :"events/new_event"
end

MyApp.get "/events/create" do
  x = Event.new
  x.name = params["new_event"] 
  x.num_entries = params["new_entries"]
  x.start_time = params["new_time"]
  x.save
  redirect "/events"
end

MyApp.get "/events" do
  @events = Event.all
  erb :"events/all_events"
end

