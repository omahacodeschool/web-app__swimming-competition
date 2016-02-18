MyApp.post "/view_add_event_confirmation" do

  @event_1 = Event.new
  @event_1.event_name = (params["event_1_name"])
  @event_1.save
  @show_added_event_name = (params["event_1_name"])

  erb :"view_add_event"
end

MyApp.post "/delete_event/:event_id" do
  @event = Event.find_by_id(params[:event_id])
  @event.delete
  @signup = Signup.where("event_id" => :event_id)
  @signup.delete_all

  erb :"view_add_event"
end

MyApp.get "/view_add_event" do

  erb :"view_add_event"
end