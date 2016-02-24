MyApp.get "/all_swimmers" do
  @swimmers = Swimmer.all

  erb :"swimmers_list"
end


MyApp.post "/swimmer_delete/:id" do

  @dq = Swimmer.find_by_id(params[:id])
  # @dq.delete_swimmer_from_race_results
  @dq.delete_swimmer_from_swim_entries
  @dq.delete
  erb :"success_swimmer_deleted"
end



MyApp.get "/swimmer/new" do

  @colleges = College.all

  @events = Race.all

  # If a GET request is made to the root path, the following line of code
  # looks for a .erb view file located in the 'views' directory at the given
  # location. So it's going to look for views/main/welcome.erb.
  # 
  # Then it will combine that view file with the layout file and sent the
  # combined document back to the client.

  # Accepts the form entry data and creates the swimmer in the table. 


  
  erb :"new_swimmer"
end

MyApp.get "/swimmer/create" do

  # If a GET request is made to the root path, the following line of code
  # looks for a .erb view file located in the 'views' directory at the given
  # location. So it's going to look for views/main/welcome.erb.
  # 
  # Then it will combine that view file with the layout file and sent the
  # combined document back to the client.

  # Accepts the form entry data and creates the swimmer in the table. 
  @swimmer = Swimmer.new
  @swimmer.last_name = params[:last_name]
  @swimmer.first_name = params[:first_name]
  @swimmer.college_id = params[:college_id]
  @swimmer.save

  @swimmer.swim_entries_one_swimmer(params[:event_id]) 
  
  erb :"success_new_swimmer_add"
end


