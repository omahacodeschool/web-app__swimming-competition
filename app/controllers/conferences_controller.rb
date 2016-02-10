MyApp.get "/conferences/create" do
  x = Conference.new
  x.name = params["new_conference"]
  x.save
  erb :"new_conference"
end

MyApp.get "/conferences" do
  @conferences = Conference.all
  erb :"all_conferences"
end
