MyApp.get "/gender_form" do
  @g = Gender.new
  @g.gender = params["gender"]
  @g.save
  erb :"gender_form"
end