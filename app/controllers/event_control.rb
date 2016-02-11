MyApp.get "/event_form" do
  @e = Event.new
  @e.distance = params["distance"]
  @e.stroke = params["stroke"]
  @g.save
  erb :"/event/event_form"
end

MyApp.get "/event_table" do
  @info = event.all
  erb :"/event/event_table"
end