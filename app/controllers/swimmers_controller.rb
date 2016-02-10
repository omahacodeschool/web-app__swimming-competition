MyApp.get "/view_add_swimmer_confirmation" do
#get confirmation
@swim_1 = Swimmer.new
@swim_1.swimmer_name = (params["swim_1_name"])
@swim_1.save
@show_added_name = (params["swim_1_name"])

@swim_2 = School.new
@swim_2.school_name = (params["swim_1_school"])
@swim_2.save
@show_added_school = (params["swim_1_school"])

erb :"view_add_swimmer_confirmation"
end


# Show form.
MyApp.get "/" do
 
  erb :"view_home_page"
end
