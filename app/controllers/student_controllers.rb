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
  erb :"admin/confirm_submission"
end

MyApp.get "/read/students" do
  @students = Student.all
  erb :"admin/read_students"
end