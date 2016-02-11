# STUDENT CONTROLLERS GO HERE

MyApp.get "/add/student" do
  @colleges = College.all
  erb :"admin/add_student"
end

MyApp.get "/student/create" do
  @student = Student.new
  @student.first_name = params["student_first_name"]
  @student.last_name = params["student_last_name"]
  @student.age = params["student_age"]
  @student.college_id = params["college_id"]
  @student.save
  @confirm_message = "Success! Created #{@student.first_name} #{@student.last_name}!"
  erb :"admin/confirm_submission"
end

MyApp.get "/read/students" do
  @students = Student.all
  erb :"admin/read_students"
end

MyApp.get "/delete/student/:student_id" do
  @student = Student.find_by_id(params[:student_id])
  @confirm_message = "Success! Deleted #{@student.first_name} #{@student.last_name}!"
  @corresponding_results = Result.where({"student_id" => params[:student_id]})
  @corresponding_results.delete_all
  @student.delete
  erb :"admin/confirm_submission"
end