MyApp.get "/gender_form" do
  @g = Gender.new
  @g.gender = params["gender"]
  @g.save
  erb :"/gender/gender_form"
end

MyApp.get "/gender_table" do
  @info = Gender.all
  erb :"/gender/gender_table"
end