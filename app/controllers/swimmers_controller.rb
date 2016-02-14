MyApp.get "/swimmers_form" do
  @swimmers = Swimmer.all

  @s = Swimmer.new
  @s.swimmer_name           = (params["swimmer_name"])
  @s.swimmer_dob            = (params["swimmer_dob"])
  @s.swimmer_gender         = (params["swimmer_gender"])
  @s.team_id                = (params["swimmer_team"].to_i)
  @s.swimmer_payment_status = (params["swimmer_payment_status"])
  @s.save
  
  erb :"main/add_swimmers"
end