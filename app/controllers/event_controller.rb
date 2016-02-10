MyApp.get "/events" do
	@list_events = Event.all
  erb :"events/list_events"
end

MyApp.get "/events/add_new" do
  erb :"events/add_event"
end

MyApp.get "/add_event" do
	x = Event.new
	x.name = params[:school_name]
	x.conference_id = params[:conference_id]
	x.save
  erb :"success"
end