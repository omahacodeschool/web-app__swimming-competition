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

MyApp.post "/lock_event/:id" do  #I KNOW THIS ISN'T IT. 
  @events = Race.find_by_id(params[:id]) #find the line in college table 
  @events.locked = true
  @events.save

  erb :"success_race_locked"
end

MyApp.post "/race/create" do

  # If a GET request is made to the root path, the following line of code
  # looks for a .erb view file located in the 'views' directory at the given
  # location. So it's going to look for views/main/welcome.erb.
  # 
  # Then it will combine that view file with the layout file and sent the
  # combined document back to the client.

  # Accepts the form entry data and creates the swimmer in the table. 

  @race = Race.new
  @race.event_name = (params[:event_name])
  @race.start_time = (params[:start])
  @race.save
 
  
  erb :"process_race_new"
end