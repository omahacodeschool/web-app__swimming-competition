MyApp.get "/add_swimmer" do
  swimmer_add = Swimmer.new
  swimmer_add.name = params[:new_swimmer]
  swimmer_add.school_id = params[:swimmer_school]
  swimmer_add.save
  erb :"administrator"
end
MyApp.get "/edit_swimmer/:place" do
  @swimmer = Swimmer.find_by_id(params[:place])
  erb :"edit_swimmer"
end
MyApp.get "/edit_swimmer/finish_update_swimmer/:place" do
  @swimmer = Swimmer.find_by_id(params[:place])
  @swimmer.name = params[:edit_title]
  @swimmer.school_id = params[:edit_number]
  @swimmer.save
  erb :"administrator"
end
MyApp.get "/view_swimmers/:place" do
  @swimmer = Swimmer.find_by_id(params[:place])
  @signup = Signup.find_by_id(params[:place])
  erb :"swimmer_list"
end
MyApp.get "/delete_swimmers/:place" do
  @swimmer = Swimmer.find_by_id(params[:place])
  @swimmer.delete
  erb :"administrator"
end