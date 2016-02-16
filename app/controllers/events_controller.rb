# Takes the name of each event submitted from the form on the add_events view
# Want to use the final list of events to populate a checklist for an Add
# Swimmers form
#
MyApp.post "/events_form" do
  @events = Event.all
  @e      = Event.new

  @e.event_name      = (params["event_name"])
  @e.event_best_time = (params["event_best_time"])
  @e.save

  erb :"main/add_events"
end

MyApp.get "/delete_event/:event_id" do
  @events = Event.all
  @event  = Event.find_by_id(params[:event_id])
  
  @event.delete
    
  erb :"main/add_events"
end