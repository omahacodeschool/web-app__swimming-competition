MyApp.get "/add_event" do
  x = Event.new
  x.name = params["event"]
  # x.event = params["event"]
  x.save

  erb :"created/created_event"
end