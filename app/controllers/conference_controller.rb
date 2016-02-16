MyApp.post "/conferences_form" do
  @conferences = Conference.all
  
  @c = Conference.new
  @c.conference_name = (params["conference_name"])
  @c.save

  erb :"main/add_conferences"
end