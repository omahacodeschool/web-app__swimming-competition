MyApp.get "/conferences/new" do
  erb :"conferences/new_conference"
end

MyApp.get "/conferences/create" do
  x = Conference.new
  x.name = params["new_conference"]
  x.save 
  redirect "/conferences"
end 

MyApp.get "/conferences" do
  @conferences = Conference.all
  erb :"conferences/all_conferences"
end
