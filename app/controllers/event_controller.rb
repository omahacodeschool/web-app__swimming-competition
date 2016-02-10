MyApp.get "/events" do
	@list_events = Event.all
  erb :"events/list_events"
end

MyApp.get "/events/add_new" do
  erb :"events/add_event"
end

MyApp.get "/add_event" do
	x = Event.new
	x.name = params[:name]
	x.save
  erb :"success"
end

MyApp.get "/event_info/:event_id" do
  @event = Event.find(params[:event_id])
  erb :"events/event_info"
end

MyApp.get "/events/edit/:event_id" do
  	@event = Event.find(params[:event_id])
	erb :"events/edit_event"
end

MyApp.get "/edit_event/:event_id" do
	@event = Event.find(params[:event_id])
	@event.update_attributes({name: params['name']})
	@event.save
	erb :"success"
end