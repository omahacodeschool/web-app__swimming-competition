#Show the update form
MyApp.get "/form_update_swimmer/:id_of_swimmer" do
  @s = Swimmer.find_by_id(params[:id_of_swimmer])

  erb :"/update/update_swimmer"
end

#Process the update
MyApp.post "/process_update_swimmer/:id" do
  @s = Swimmer.find_by_id(params[:id])
  @s.swimmer_name = params["new_swimmer_name"]
  @s.university_id = params["new_swimmer_university_id"]
  #binding.pry
  @s.save
  erb :"/success/update_swimmer"
end