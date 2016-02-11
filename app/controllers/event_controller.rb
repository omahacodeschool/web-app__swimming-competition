MyApp.get "/create_event" do
  erb :"data_entry/event_new"
end

MyApp.get "/event_added" do
  x = Event.new
  x.name = params["event"]
  # x.event = params["event"]
  x.save

  erb :"created/created_event"
end