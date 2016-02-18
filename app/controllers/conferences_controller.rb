MyApp.post "/conferences_form" do
  @conferences = Conference.all
  
  @c = Conference.new
  @c.conference_name = (params["conference_name"])
  @c.save

  erb :"main/add_conferences"
end

MyApp.get "/delete_conference/:conference_id" do
  @conferences = Conference.all
  @conference  = Conference.find_by_id(params[:conference_id])
  
  if @conference.del_conference_check
    erb :"main/add_conferences"
  else
    @error = "YOU CAN'T DELETE THIS: TEAMS ASSOCIATED WITH THIS CONFERENCE"
    erb :"main/add_conferences"
  end
  #erb :"main/delete_error"
end

MyApp.get "/update_conference/:conference_id" do
  @conferences = Conference.all
  @conference  = Conference.find_by_id(params[:conference_id])

  erb :"main/update_conference"
end

MyApp.post "/process_conference_update/:conference_id" do
  @conferences = Conference.all
  @conference  = Conference.find_by_id(params[:conference_id])

  @conference.conference_name = (params["conference_name_update"])
  @conference.save

  erb :"main/add_conferences"
end