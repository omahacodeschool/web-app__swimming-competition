# Takes the name of each event submitted from the form on the add_events view
# Want to use the final list of events to populate a checklist for an Add
# Swimmers form
#
MyApp.get "/events_form" do
  @events = Event.all
  
  @e = Event.new
  @e.event_name      = (params["event_to_add"])
  @e.event_best_time = (params["event_best_time_to_add"])
  @e.save

  erb :"main/add_events"
end