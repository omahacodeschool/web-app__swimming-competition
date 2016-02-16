# view that shows the form for adding a 'school'
MyApp.get "/create_school" do
  @conferences = Conference.all
  erb :"school/create_school"
end

# view that shows the user they have successfully created a new 'school'.
MyApp.get "/create_school/success" do
  x = School.new
  # x.school_name is a new Active Record method that sets a School Object attribute name to 'school_name'.
  x.school_name = params["school"]
  # x.conference_id is a new Active Record method that sets a Conference Object name 'conference_id' equal to a 'school_entered'.
  x.conference_id = params["conference"]
  # x.save is a new Active Recored method that saves that School Object to the 'schools' table.
  x.save
  # binding.pry # what is 'x'?
  erb :"school/create_school_success"
end

# show all the schools
MyApp.get "/schools" do
  # .all must be run on the class School itself.
  # @schools can be used in the view.
  @schools = School.all
  # binding.pry # what is '@schools'?
  erb :"school/all_schools"
end

# view a single school by id
MyApp.get "/view_school/:number" do
  @school = School.find_by_id(params[:number])
  @competitor = Competitor.where({"school_id" => params[:number]})
  erb :"school/view_school"
end

# delete a school
MyApp.get "/delete_school/:variable" do
  @school = School.find_by_id(params[:variable])
  @school.delete
  erb :"school/school_deleted"
end

# update a school - 2 actions to show and process a form
# controller action to show a form to update a school
MyApp.get "/edit_school/:variable" do
  @school = School.find_by_id(params[:variable])
  erb :"school/edit_school_form"
end

# controller action to process the form
MyApp.get "/process_edit_school_form/:variable" do
  @school = School.find_by_id(params[:variable])
  @school.save
  erb :"school/school_updated"
end

