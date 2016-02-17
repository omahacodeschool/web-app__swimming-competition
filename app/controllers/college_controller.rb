MyApp.get "/colleges" do
  @colleges = College.all
  erb :"/colleges/colleges"
end

MyApp.post "/colleges/add_college" do
  @conference = Conference.all
  erb :"/colleges/add_college"
end

MyApp.post "/colleges/added_new_college" do
  @c = College.new
  @c.name = params["add_college_name_textbox"]
  conference = params["college_conference_dropdown"]
  @c.conference_id = conference
  @c.save
  redirect :"/colleges/college/#{@c.id}"
end

MyApp.post "/colleges/college/:id/delete_college/confirmation" do
  @college = College.find_by_id(params[:id])
  @college.delete_all_competitor_results
  @college.delete_all_competitors
  @college.delete
  redirect :"/colleges"
end

MyApp.get "/colleges/college/:id" do
  @college = College.find_by_id(params[:id])
  @conferences = Conference.all
  @competitors = Competitor.where({"college_id" => params[:id]})
  erb :"/colleges/college"
end

MyApp.post "/colleges/college/:id/update_college" do
  @college = College.find_by_id(params[:id])
  @conferences = Conference.all
  erb :"/colleges/update_college"
end

MyApp.post "/colleges/college/:id/update_college/confirmation" do
  @college = College.find_by_id(params[:id])
  @conferences = Conference.all
  @c = College.find_by_id(params[:id])
  @c.conference_id = params["update_college_conference_dropdown"]
  @c.name = params["update_college_name_textbox"]
  @c.save
  redirect :"/colleges/college/#{@college.id}"
end