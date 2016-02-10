MyApp.get "/conferences/create" do
  x = Conference.new
  x.name = params["new_conference"]
  x.save
  erb :"conferences/new_conference"
end

MyApp.get "/conferences" do
  @conferences = Conference.all
  erb :"conferences/all_conferences"
end
