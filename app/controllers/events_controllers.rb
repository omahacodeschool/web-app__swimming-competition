MyApp.post "/events" do
  x = Event.new
  x.event = params["event"]
  x.save
  @y = [x.event]
  erb :"events/events"
end

MyApp.get "/all_events" do 
  @events = Event.all
  erb :"events/events_list"
end 

MyApp.get "/view_event/:event_id" do 
  @event = Event.find_by_id(params[:event_id])
  erb :"events/single_event"
end

MyApp.post "/delete_event/:event_id" do
  @event = Event.find_by_id(params[:event_id])
  @event.delete
  @result = Result.where("event_id" => params[:event_id])
  @result.each do |r|
    r.delete
  end
  erb :"events/deleted"
end

MyApp.get "/edit_event/:event_id" do
  @event = Event.find_by_id(params[:event_id])
  erb :"events/form_for_editing_event"
end

MyApp.post "/process_event_edit_form/:event_id" do
  x = Event.find_by_id(params[:event_id])
  x.event = params["event"]
  x.save
  @y = [x.event]
  erb :"events/processed"
 end 


