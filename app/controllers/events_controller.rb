MyApp.get "/events" do
  x = Event.new
  x.event = params["event"]
  x.first = params["first"]
  x.second = params["second"]
  x.third = params["third"]
  x.save
  @y = [x.event, x.first, x.second, x.third]
  erb :"events/events"
end