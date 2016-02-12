MyApp.get "/swimmers_form" do
  @swimmers = Swimmer.all
  @s = Swimmer.new
  @s.swimmer_name = (params["swimmer_to_add"])
  @s.swimmer_dob = (params["swimmer_dob"])
  @s.swimmer_gender = (params["swimmer_gender"])
  @s.team_id = (params["select_team"])
  @s.save

  erb :"main/add_swimmers"
end