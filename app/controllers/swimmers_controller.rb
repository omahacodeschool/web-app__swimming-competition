MyApp.post "/view_add_swimmer_confirmation" do

  swim_1_school = School.where("school_name" => params["school_1_name"])

  swim_1 = Swimmer.new
  swim_1.swimmer_name = (params["swim_1_name"])
  swim_1.school_id = swim_1_school.ids[0]
  swim_1.save
  @show_added_name = (params["swim_1_name"])
  @show_added_school = params["school_1_name"]

  erb :"view_add_swimmer_confirmation"
end

MyApp.get "/view_add_swimmer" do

  erb :"view_add_swimmer"
end

# Show form.
MyApp.get "/" do
  erb :"view_home_page"
end
