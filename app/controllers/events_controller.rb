MyApp.post "/add_event_confirmation" do

  @all_events = Event.all

  event_1 = Event.new
  event_1.event_name = (params["event_1_name"])
  event_1.save

  erb :"/events/add_event"
end

MyApp.post "/delete_event/:event_id" do

  @all_events = Event.all

  event_1 = Event.find_by_id(params[:event_id])
  event_1.delete
  signup_1 = Signup.where("event_id" => :event_id)
  signup_1.delete_all

  erb :"/events/add_event"
end

MyApp.get "/add_event" do

  @all_events = Event.all

  erb :"/events/add_event"
end