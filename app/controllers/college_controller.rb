# ALL COLLEGE CONTROLLERS GO HERE

MyApp.get "/add/college" do
  @conferences = Conference.all
  erb :"admin/college/add_college"
end

MyApp.post "/college/create" do
  @college = College.new
  @college.college_name = params["college_name"]
  @college.conference_id = params["conference_id"]
  @college.save
  erb :"admin/confirm_submission"
end

MyApp.get "/read/colleges" do
  @colleges = College.all
  erb :"admin/college/read_colleges"
end