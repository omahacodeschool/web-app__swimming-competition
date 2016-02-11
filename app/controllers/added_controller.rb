#Processes the form to add an event
MyApp.get "/add_event" do 
  x = Event.new
  x.name = params ["event_name"]
  x.save

  erb :"added/event_added"
end