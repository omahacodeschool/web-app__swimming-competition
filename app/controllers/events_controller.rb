MyApp.get "/events" do
  @events = Event.all
  erb :"main/events"
end

MyApp.get "/event_added" do
  x = Event.new
  x.gender = params[:race_gender]
  x.distance = params[:race_distance]
  x.style_id = params[:style_id]
  x.save
  erb :"main/event_added"
end