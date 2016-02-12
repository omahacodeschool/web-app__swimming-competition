MyApp.get "/event_form/new" do
  erb :"event/event_form"
end

MyApp.get "/event_form/create" do
  @e = Event.new
  @e.distance = params["distance"]
  @e.stroke = params["stroke"]
  @e.save
  erb :"event/event_form"
end

MyApp.get "/event_table" do
  @info = Event.all
  erb :"event/event_table"
end


MyApp.get "/event/:id" do
  x = Event.find_by_id(params[:id])
  z = SignupResult.all
  y = z(event_id(x))

  binding.pry
  

  


  erb :"event/1"
end