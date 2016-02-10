MyApp.get "/swimmer_info_form" do
  @s = SwimmerInfo.new
  @s.first_name = params["first_name"]
  @s.save
  erb :"/swimmer_info_form"
end