MyApp.get "/conferences" do
  erb :"main/conferences"
end

MyApp.get "/conference_added" do
  erb :"main/conference_added"
end