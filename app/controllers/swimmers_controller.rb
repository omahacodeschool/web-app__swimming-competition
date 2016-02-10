MyApp.get "/add_swimmers" do
  
  erb :"main/add_swimmers"
end

MyApp.get "swimmers_form" do
  @swimmers = Swimmer.all
  @s.swimmer_name =
  @s.

  erb :"main/add_swimmers"
end