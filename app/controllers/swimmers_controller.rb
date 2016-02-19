MyApp.post "/add_swimmer_confirmation" do

  swim_1_school = School.where("school_name" => params["school_1_name"])

  swim_1 = Swimmer.new
  swim_1.swimmer_name = (params["swim_1_name"])
  swim_1.school_id = swim_1_school.ids[0]
  swim_1.save
  @show_added_name = (params["swim_1_name"])
  @show_added_school = params["school_1_name"]

  erb :"views/swimmers/add_swimmer"
end

MyApp.post "/edit_swimmer_name/:swimmer_id" do

  @swimmer = Swimmer.find_by_id(params[:swimmer_id])
  @swimmer.swimmer_name = params["swim_edit_name"]
  @swimmer.save
  erb :"views/swimmers/add_swimmer"
end

MyApp.post "/delete_swimmer/:swimmer_id" do

  @swimmer = Swimmer.find_by_id(params[:swimmer_id])
  @swimmer.delete

  @signup = Signup.where("swimmer_id" => params[:swimmer_id])
  @signup.delete_all

  erb :"views/swimmers/add_swimmer"
end

MyApp.get "/add_swimmer" do

  @swimmers_all = Swimmer.all

  erb :"views/swimmers/add_swimmer"
end

MyApp.get "/" do
  erb :"view_home_page"
end
