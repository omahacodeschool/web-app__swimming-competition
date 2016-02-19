MyApp.get "/schools" do
	@list_schools = School.all
  erb :"schools/list_schools"
end

MyApp.get "/schools/add_new" do
	@list_conferences = Conference.all
  erb :"schools/add_school"
end

MyApp.post "/add_school" do
	school = School.new
	school.name = params[:school_name]
	school.conference_id = params[:conference_id]
	school.save
  redirect :"school_info/#{school.id}"
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

MyApp.post "/edit_school/:school_id" do
	@school = School.find(params[:school_id])
	@school.update_attributes({name: params['school_name'], conference_id: params['conference_id']})
	@school.save
	redirect :"school_info/#{@school.id}"
end

MyApp.post "/school_delete/:school_id" do
	@school = School.find(params[:school_id])
	x = @school.school_members
  if x != nil
  	x.delete_competitor_info
  	@school.delete_school_info
  	@school.delete
  else
    @school.delete_school_info
    @school.delete
  end
  redirect :"schools"
end




