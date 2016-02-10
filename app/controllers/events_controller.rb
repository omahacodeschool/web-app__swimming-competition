MyApp.get "/events/create" do
  x = Event.new
  x.name = params["new_event"]
  x.save
  erb :"new_event"
end

MyApp.get "/events" do
  @events = Event.all
  erb :"all_events"
end