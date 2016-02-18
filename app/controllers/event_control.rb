MyApp.get "/event_form/new" do
  erb :"event/event_form"
end

MyApp.get "/event_form/create" do
  @e = Event.new
  @e.event_name = params["event_name"]
  @e.save
  erb :"event/event_form"
end

MyApp.get "/event_table" do
  @info = Event.all
  erb :"event/event_table"
end

MyApp.post "/lock_event/:id" do
  @info = Event.find_by_id(params[:id])
  @info.lock = params["lock"]
  @info.save
  erb :"event/event_locked_success"
end