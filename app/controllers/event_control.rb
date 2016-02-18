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

MyApp.post "/process_edit_form/:id" do
  @info = Event.find_by_id(params[:id])
  @info.event_name = params["event_name"]
  if @info.event_locked? == true
    erb :"event/sorry_event_locked"
  else
    @info.save
    erb :"event/update_success"
  end
end


MyApp.get "/delete_event/:id" do
  @info = Event.find_by_id(params[:id])
  if @info.event_locked? == true
    erb :"event/sorry_event_locked"
  else 
    @info.delete
    erb :"/event/delete_success"
  end
end
