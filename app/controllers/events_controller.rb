MyApp.get "/events" do
  erb :"main/events"
end

MyApp.get "/event_added" do
  erb :"main/events_added"
end