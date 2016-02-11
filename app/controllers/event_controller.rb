MyApp.get "/create_event" do
  erb :"/create/create_event"
end

MyApp.get "/create_event/success" do
  x = Event.new
  x.name = params["event"]
  # x.event = params["event"]
  x.save

  erb :"/create/create_event_success"
end