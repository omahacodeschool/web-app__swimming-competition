MyApp.get "/events/create" do
  erb :"new_event"
end

MyApp.get "/events" do
  @events = Event.all
  erb :"all_events"
end