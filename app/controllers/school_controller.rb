# take user to page to create a school
MyApp.get "/create_school" do
  erb :"/create/create_school"
end

MyApp.get "/create_school/success" do
  x = School.new
  x.name = params["school"]
  x.save
  erb :"/create/create_school_success"
end

MyApp.get "/list_schools" do
  @schools = School.all
  erb :"list_schools"
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



























