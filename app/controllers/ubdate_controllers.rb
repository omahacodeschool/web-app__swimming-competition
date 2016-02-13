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

#Show the update form
MyApp.get "/form_update_university/:id_of_university" do
  @s = University.find_by_id(params[:id_of_university])

  erb :"/update/update_university"
end

#Process the update
MyApp.get "/process_update_university/:id" do
  @s = University.find_by_id(params[:id])
  @s.university_name = params["new_university_name"]
  @s.conference_id = params["conference_id"]
  @s.save
  erb :"/success/update_university"
end