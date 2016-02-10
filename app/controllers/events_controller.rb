#
# Points the request from the welcome page 'Add Events' button to the
# add_events view
#
MyApp.get "/add_events" do
  @events = Event.all

  erb :"main/add_events"
end
#
# Takes the name of each event submitted from the form on the add_events view
# Want to use the final list of events to populate a checklist for an Add
# Swimmers form
#
MyApp.get "/events_form" do
  @events = Event.all
  @e = Event.new
  @e.event_name = (params["event_to_add"])
  @e.save

  erb :"main/add_events"
end