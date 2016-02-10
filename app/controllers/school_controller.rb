MyApp.get "/schools" do
	@list_schools = School.all
  erb :"schools/list_schools"
end

MyApp.get "/schools/add_new" do
	@list_conferences = Conference.all
  erb :"schools/add_school"
end

MyApp.get "/add_school" do
	x = School.new
	x.name = params[:school_name]
	x.conference_id = params[:conference_id]
	x.save
  erb :"success"
end

MyApp.get "/school_info/:school_id" do
  @school = School.find(params[:school_id])
  erb :"schools/school_info"
end

MyApp.get "/school/edit/:school_id" do
  	@school = School.find(params[:school_id])
  	@list_conferences = Conference.all
	erb :"schools/edit_school"
end

MyApp.get "/edit_school/:school_id" do
	@school = School.find(params[:school_id])
	@school.update_attributes({name: params['name'], conference_id: params['confernce_id']})
	@school.save
	erb :"success"
end
