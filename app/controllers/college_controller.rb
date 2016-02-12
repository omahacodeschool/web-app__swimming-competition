MyApp.get "/colleges/add_college" do
  @conference = Conference.all

  erb :"/colleges/add_college"
end

MyApp.get "/colleges/added_new_college" do
  c = College.new
  c.name = params["add_college_name_textbox"]
  conference = params["college_conference_dropdown"]
  c.conference_id = conference
  c.save
  erb :"/colleges/added_college_confirmation"
end

MyApp.post "/colleges/college/update_name/:id" do
  @a = College.find_by_id(params[:id])
  @a.name = params["update_college_name_textbox"]
  @a.save
  erb :"/colleges/update_college_confirmation"
end

MyApp.post "/colleges/college/updated_conference/:id" do
  @c = College.find_by_id(params[:id])
  @c.conference_id = params["update_college_conference_dropdown"]
  @c.save
  erb :"/colleges/update_college_confirmation"
end

MyApp.get "/colleges/college/:id" do
  @college = College.find_by_id(params[:id])
  @conferences = Conference.all
  erb :"/colleges/college"
end