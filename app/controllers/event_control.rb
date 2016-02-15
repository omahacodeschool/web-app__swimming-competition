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


MyApp.get "/event/:" do
  @x = Event.find_by_id(params[:id])
  binding.pry
  @z = SignupResult.all
  binding.pry
  erb :"event/1"
end