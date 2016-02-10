MyApp.get "/" do
  
  erb :"main/welcome"
end

MyApp.get "/add_events" do

  erb :"main/add_events"
end

MyApp.get "/add_teams" do

  erb :"main/add_teams"
end

MyApp.get "/add_swimmers" do

  erb :"main/add_swimmers"
end