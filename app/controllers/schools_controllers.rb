MyApp.post "/schools" do 
  x = School.new
  x.school = params["school"]
  x.conference_id = params["conference_id"]
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

MyApp.post "/delete_school/:school_id" do
  @school = School.find_by_id(params[:school_id])
  @school.delete
  @result = Result.where("event_id" => params[:event_id])
  @result.each do |r|
    r.delete
  end
  erb :"schools/deleted"
end

MyApp.get "/edit_school/:school_id" do
  @school = School.find_by_id(params[:school_id])
  erb :"schools/form_for_editing_school"
end

MyApp.post "/process_school_edit_form/:school_id" do
  x = School.find_by_id(params[:school_id])
  x.school = params["school"]
  x.conference_id = params["conference_id"]
  x.save
  @y = [x.school, x.conference_id]
  erb :"schools/processed"
 end 


