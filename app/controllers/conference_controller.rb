MyApp.post "/conferences_form" do
  @conferences = Conference.all
  
  @c = Conference.new
  @c.conference_name = (params["conference_name"])
  @c.save

  erb :"main/add_conferences"
end

MyApp.get "/delete_conference/:conference_id" do
  @conference = Conference.find_by_id(params[:conference_id])
  @conference.delete
    
  erb :"main/add_conferences"
end