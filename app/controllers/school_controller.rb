MyApp.get "/schools" do
	@list_schools = School.all
  erb :"schools/list_schools"
end

MyApp.get "/schools/add_new" do
  erb :"schools/add_school"
end

MyApp.get "/add_school" do
	x = School.new
	x.name = params[:school_name]
	x.conference_id = params[:conference_id]
	x.save
  erb :"success"
end