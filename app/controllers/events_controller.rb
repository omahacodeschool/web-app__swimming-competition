MyApp.get "/events/new" do
  erb :"events/new_event"
end

MyApp.get "/events/create" do
  x = Event.new
  x.name = params["new_event"] 
  x.save
  redirect "/events"
end

MyApp.get "/events" do
  @events = Event.all
  erb :"events/all_events"
end