MyApp.get "/read/conferences" do
  @conferences = Conference.all
  erb :"admin/read_conferences"
end
