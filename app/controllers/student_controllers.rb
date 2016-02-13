# STUDENT CONTROLLERS GO HERE

MyApp.get "/add/student" do
  @colleges = College.all
  erb :"admin/student/add_student"
end

MyApp.post "/student/create" do
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
  erb :"admin/student/read_students"
end

MyApp.post "/delete/student/:student_id" do
  @student = Student.find_by_id(params[:student_id])
  @confirm_message = "Success! Deleted #{@student.first_name} #{@student.last_name}!"
  @corresponding_results = Result.where({"student_id" => params[:student_id]})
  @corresponding_results.delete_all
  @student.delete
  erb :"admin/confirm_submission"
end

MyApp.get "/update/student/:student_id" do
  @student = Student.find_by_id(params[:student_id])
  @colleges = College.all
  erb :"admin/student/update_student"
end

MyApp.post "/process_update_student_form/:student_id" do
  @student = Student.find_by_id(params[:student_id])
  @student.first_name = params["student_first_name"]
  @student.last_name = params["student_last_name"]
  @student.age = params["student_age"]
  @student.college_id = params["college_id"]
  @student.save
  @confirm_message = "Success! Updated #{@student.first_name} #{@student.last_name}!"
  erb :"admin/confirm_submission"
end

MyApp.get "/read/student/:student_id" do
  @student = Student.find_by_id(params[:student_id])
  @results = Result.where({"student_id" => params[:student_id]})
  sorted_results = @results.order(student_score: :desc)
  @top_three_activities = sorted_results.first(3)
  erb :"admin/student/read_one_student"
end

# MyApp.get "/read/activity/:id" do
#   @activity = Activity.find_by_id(params[:id])
#   @results = Result.where({"activity_id" => params[:id]})
#   sorted_results = @results.order(student_score: :desc)
#   @top_three_results_for_activity = sorted_results.first(3)
#   erb :"admin/activity/read_one_activity"
# end








