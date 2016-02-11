
MyApp.get "/gender_form/create" do
  @g = Gender.new
  @g.gender = params["gender"]
  @g.save
  erb :"admin/admin_page"
end

MyApp.get "/gender_table" do
  @info = Gender.all
  erb :"gender_table"
end