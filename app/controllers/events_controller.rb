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

MyApp.get "/update_event/:event_id" do
  @events = Event.all
  @event  = Event.find_by_id(params[:event_id])

  erb :"main/update_event"
end

MyApp.post "/process_event_update/:event_id" do
  @event  = Event.find_by_id(params[:event_id])

  @event.event_name      = (params["event_name_update"])
  @event.event_best_time = (params["event_time_update"])
  @event.save

  erb :"main/add_events"
end
#
# Not sure if I need to place this controller action in my Runs or Events
# controller
# If here, how do I know which set of Event runs is tied to any instance of
# the form being passed in?
MyApp.post "/event_complete_form/:event_id" do
  @events = Event.all
  @event =  Event.find_by_id(params[:event_id])
            
  @event.event_complete = (params["event_complete_check"])
  @event.event_complete?

  erb :"main/add_runs"
end