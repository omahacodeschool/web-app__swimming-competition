MyApp.get "/create_event" do
  erb :"/create/create_event"
end

# shows the user they have successfully created a conference.
MyApp.get "/create_event/success" do
  x = Event.new
  # x.event_name is a new Active Record method that sets an Event Object attribute name to "event_name".
  x.event_name = params["event_entered"]
  # x.save should be a new Active Record method that saves that Event Object to the "events" table. 
  x.save
  # binding.pry # what is 'x'?
  erb :"create/create_event_success"
end

# shows all conferences
MyApp.get "/events" do
  # .all must be run on the class Event itself.
  # @events can be used in the view.
  @events = Event.all
  # binding.pry # what is '@events'?
  erb :"lists/all_events"
end