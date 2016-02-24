MyApp.post "/race_result_delete_one_swimmer" do

  @dq = RaceResult.find_by_id(params[:id]) #find by id. I don't need the whole table.


  erb :"success_deleted_race_results_one_swimmer"
end

MyApp.get "/race_result" do

  # If a GET request is made to the root path, the following line of code
  # looks for a .erb view file located in the 'views' directory at the given
  # location. So it's going to look for views/main/welcome.erb.
  # 
  # Then it will combine that view file with the layout file and sent the
  # combined document back to the client.
  erb :"race_result" #/This should go to the main page, where the input is.
end

MyApp.get "/race_result/new" do

  # If a GET request is made to the root path, the following line of code
  # looks for a .erb view file located in the 'views' directory at the given
  # location. So it's going to look for views/main/welcome.erb.
  # 
  # Then it will combine that view file with the layout file and sent the
  # combined document back to the client.

  # Accepts the form entry data and creates the swimmer in the table. 

  
  erb :"race_result"
end

MyApp.get "/race_result/create" do

  # If a GET request is made to the root path, the following line of code
  # looks for a .erb view file located in the 'views' directory at the given
  # location. So it's going to look for views/main/welcome.erb.
  # 
  # Then it will combine that view file with the layout file and sent the
  # combined document back to the client.

  # Accepts the form entry data and creates the swimmer in the table. 
  r = RaceResult.new
  r.swim_entry_id =params[:swim_entry_id]
  r.swimmer_done =params[:swimmer_done]
  r.swimmer_race_rank = params[:swimmer_race_rank]
  r.save
 
  
  erb :"success_race_res_add"
end