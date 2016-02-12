MyApp.get "/conferences_form" do
  @conferences = Conference.all
  @c = Conference.new
  @c.conference_name = (params["conference_to_add"])
  @c.save

  erb :"main/add_conferences"
end