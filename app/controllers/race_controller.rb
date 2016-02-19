

MyApp.get "/race" do

  # If a GET request is made to the root path, the following line of code
  # looks for a .erb view file located in the 'views' directory at the given
  # location. So it's going to look for views/main/welcome.erb.
  # 
  # Then it will combine that view file with the layout file and sent the
  # combined document back to the client.
  erb :"race" #/This should go to the main page, where the input is.
end


#Returns all of the information in the Races table.
MyApp.get "/race_view/:id" do

  @event = Race.find_by_id(params[:id])
  # @records = []
  # #locate object in races table
  # @w = Race.find_by_id(params[:id])
  # swimmer_ids = @w.swimmer_ids_one_race
  # swimmer_ids.each do |number| 
  #   record = Swimmer.find_by_id(number)
  #   @records.push(record) #should return all of the relevant objects for display

  # end 
    #returns an array of IDs?
  erb :"race_status"
end



   MyApp.get "/race/new" do

  # If a GET request is made to the root path, the following line of code
  # looks for a .erb view file located in the 'views' directory at the given
  # location. So it's going to look for views/main/welcome.erb.
  # 
  # Then it will combine that view file with the layout file and sent the
  # combined document back to the client.

  # Accepts the form entry data and creates the swimmer in the table. 


  
  erb :"race"
end


MyApp.get "/race/schedule" do
  @events = Race.all
  

  erb :"race_schedule"
end

MyApp.get "/race/create" do

  # If a GET request is made to the root path, the following line of code
  # looks for a .erb view file located in the 'views' directory at the given
  # location. So it's going to look for views/main/welcome.erb.
  # 
  # Then it will combine that view file with the layout file and sent the
  # combined document back to the client.

  # Accepts the form entry data and creates the swimmer in the table. 

  g = Race.new
  g.event_name = (params[:event_name])
  g.start_time = (params[:start_time])
  g.save
 
  
  erb :"success_race_add"
end