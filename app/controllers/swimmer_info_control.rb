MyApp.get "/swimmer_info_form" do
  @s = SwimmerInfo.new
  @s.first_name = params["first_name"]
  @s.save
  erb :"/swimmer/swimmer_info_form"
end

MyApp.get "/swimmer_info_table" do
  @info = SwimmerInfo.all
  erb :"/swimmer/swimmer_info_table"
end