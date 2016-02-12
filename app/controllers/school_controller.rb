# view that shows the form for adding a 'school'
MyApp.get "/create_school" do
  erb :"create/create_school"
end

# view that shows the user they have successfully created a new 'school'.
MyApp.get "/create_school/success" do
  x = School.new
  # x.school_name is a new Active Record method that sets a School Object attribute name to 'school_name'.
  x.school_name = params["school_entered"]
  # x.save is a new Active Recored method that saves that School Object to the 'schools' table.
  x.save
  # binding.pry # what is 'x'?
  erb :"create/create_school_success"
end

# show all the schools
MyApp.get "/schools" do
  # .all must be run on the class School itself.
  # @schools can be used in the view.
  @schools = School.all
  # binding.pry # what is '@schools'?
  erb :"lists/all_schools"
end

# view a single school
MyApp.get "/view_school/:variable" do
  @school = School.find_by_id(params[:variable])
  erb :"single_school"
end

# delete a school
MyApp.get "/delete_school/:variable" do
  @school = School.find_by_id(params[:variable])
  @school.delete
  erb :"deleted"
end

# update a school - 2 actions to show and process a form
# controller action to show a form to update a school
MyApp.get "/edit_school/:variable" do
  @school = School.find_by_id(params[:variable])
  erb :"edit_school_form"
end

# controller action to process the form
MyApp.get "/process_edit_school_form/:variable" do
  @school = School.find_by_id(params[:variable])
  @school.school = params["school"]
  @school.save
  erb :"updated"
end



























