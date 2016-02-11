MyApp.get "/event_form/new" do
  erb :"event/event_form"
end

MyApp.get "/event_form" do
  @e = Event.new
  @e.distance = params["distance"]
  @e.stroke = params["stroke"]
  @e.save
  erb :"event_form"
end

MyApp.get "/event_table" do
  @info = Event.all
  erb :"event_table"
end