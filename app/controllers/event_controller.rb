MyApp.get "/add_event" do
  event_add = Event.new
  event_add.event_name = params[:new_event]
  event_add.save
  allevents = Event.all
  erb :"administrator"
end
MyApp.get "/view_event/:place" do
  @event = Event.find_by_id(params[:place])
  erb :"event_list"
end
MyApp.get "/delete_event/:place" do
  @event = Event.find_by_id(params[:place])
  @event.delete
  erb :"administrator"
end
