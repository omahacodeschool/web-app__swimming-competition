MyApp.post "/schools" do 
  x = School.new
  x.school = params["school"]
  x.conference_id = params["conf_id"]
  x.save
  @y = [x.school, x.conference_id]
  erb :"schools/schools"
end

MyApp.get "/all_schools" do 
  @schools = School.all
  erb :"schools/schools_list"
end 

MyApp.get "/view_school/:school_id" do 
  @school = School.find_by_id(params[:school_id])
  erb :"schools/single_school"
end