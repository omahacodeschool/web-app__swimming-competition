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

MyApp.get "/update/college/:college_id" do
  @college = College.find_by_id(params[:college_id])
  @conferences = Conference.all
  erb :"admin/college/update_college"
end

MyApp.post "/process_update_college_form/:college_id" do 
  @college = College.find_by_id(params[:college_id])
  @college.college_name = params["college_name"]
  @college.conference_id = params["conference_id"]
  @college.save
  @confirm_message = "Success! Updated #{@college.college_name}!"
  erb :"admin/confirm_submission"
end

MyApp.post "/delete/college/:college_id" do
  @college = College.find_by_id(params[:college_id])
  @confirm_message = "Success! Deleted #{@college.college_name}!"
  @corresponding_students = Student.where({"college_id" => params[:college_id]})
  @corresponding_results = Result.where({"student_id" => @college.get_student_ids})
  @corresponding_results.delete_all
  @corresponding_students.delete_all
  @college.delete
  erb :"admin/confirm_submission"
end

MyApp.get "/read/colleges" do
  @colleges = College.all
  erb :"admin/college/read_colleges"
end