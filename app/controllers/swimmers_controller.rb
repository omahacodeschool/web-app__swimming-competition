MyApp.post "/add_swimmer_confirmation" do

  swim_1_school = School.find_by_school_name(params["school_1_name"])

  swimmer_1 = Swimmer.new
  swimmer_1.swimmer_name = (params["swim_1_name"])
  swimmer_1.school_id = swim_1_school.id
  swimmer_1.save

  erb :"views/swimmers/add_swimmer"
end


MyApp.post "/edit_swimmer_name/:swimmer_id" do

  swimmer_1 = Swimmer.find_by_id(params[:swimmer_id])
  swimmer_1.swimmer_name = params["swim_edit_name"]
  swimmer_1.save

  erb :"views/swimmers/add_swimmer"
end


MyApp.post "/delete_swimmer/:swimmer_id" do

  swimmer_1 = Swimmer.find_by_id(params[:swimmer_id])
  signup_1 = Signup.where("swimmer_id" => params[:swimmer_id])
  swimmer_1.delete
  signup_1.delete_all

  erb :"views/swimmers/add_swimmer"
end


MyApp.get "/add_swimmer" do

  @swimmers_all = Swimmer.all

  erb :"views/swimmers/add_swimmer"
end


MyApp.get "/" do
  erb :"view_home_page"
end
