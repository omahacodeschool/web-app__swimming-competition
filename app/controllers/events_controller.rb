MyApp.get "/events/create" do
  erb :"new_event"
end

MyApp.get "/conferences" do
  @events = Event.all
  erb :"all_events"
end