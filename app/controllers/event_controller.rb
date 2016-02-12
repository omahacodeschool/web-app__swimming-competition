MyApp.get "/create_event" do
  erb :"/create/create_event"
end

# shows the user they have successfully created a conference.
MyApp.get "/create_event/success" do
  x = Event.new
  x.event_name = params["event_name"]
  # this should be a new Active Record method that sets an Event Object attribute name to the information passed through params
  x.save
  # this should be a new Active Record method that saves that Event Object to the "events" table
  erb :"create/create_event_success"
end

# shows all conferences
MyApp.get "/events" do
  @events = Event.all
  binding.pry
  erb :"lists/all_events"
end