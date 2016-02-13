MyApp.get "/schools" do
  @schools = School.all
  erb :"main/schools"
end

MyApp.get "/school_added" do
  x = School.new
  x.school_name = params[:school_name]
  x.save
  erb :"main/school_added"
end

MyApp.get "/delete/school_deleted/:dogfood" do
  @school = School.find_by_id(params[:dogfood])
  @school.delete
  erb :"main/delete/school_deleted"
end