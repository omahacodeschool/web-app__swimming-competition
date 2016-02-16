MyApp.get "/conferences" do
  @conferences = Conference.all
  erb :"/conferences/conferences"
end

MyApp.post "/conferences/add_conference" do
  erb :"/conferences/add_conference"
end

MyApp.post "/conferences/added_new_conference" do
  c = Conference.new
  c.name = params["add_conference_name_textbox"]
  c.save
  erb :"/conferences/added_conference_confirmation"
end

MyApp.get "/conferences/conference/:id" do
  @conference = Conference.find_by_id(params[:id])
  @colleges = College.where({"conference_id" => params[:id]})
  erb :"/conferences/conference"
end

MyApp.get "/conferences/conference/:id/update_conference" do
  @conference = Conference.find_by_id(params[:id])
  erb :"/conferences/update_conference"
end

MyApp.post "/conferences/conference/:id/update_conference/confirmation" do
  @c = Conference.find_by_id(params[:id])
  @c.name = params["update_conference_name_textbox"]
  @c.save
  erb :"/conferences/update_conference_confirmation"
end

MyApp.post "/conferences/conference/:id/delete_conference/confirmation" do
  @c = Conference.find_by_id(params[:id])
  @c.delete_all_competitor_results
  @c.delete_all_competitors
  @c.delete_all_colleges
  @c.delete
  erb :"/conferences/deleted_conference_confirmation"
end