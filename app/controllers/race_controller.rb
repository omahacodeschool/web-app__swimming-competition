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
MyApp.get "/race" do

  @races = Race.all

  z = x.find_by_id(4)
  erb: single_race_swimmers
end



#So I need to return all of the race 4 swimmer names in the race database. To do that  I need to find race 4, and then return every swimmer in 'swim_entry' who is in race 4. 


  # If a GET request is made to the root path, the following line of code
  # looks for a .erb view file located in the 'views' directory at the given
  # location. So it's going to look for views/main/welcome.erb.
  # 
  # Then it will combine that view file with the layout file and sent the
  # combined document back to the client.

  # Accepts the form entry data and creates the swimmer in the table. 


  
  erb :"race_swimmers"
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

MyApp.get "/race/create" do

  # If a GET request is made to the root path, the following line of code
  # looks for a .erb view file located in the 'views' directory at the given
  # location. So it's going to look for views/main/welcome.erb.
  # 
  # Then it will combine that view file with the layout file and sent the
  # combined document back to the client.

  # Accepts the form entry data and creates the swimmer in the table. 

  g = Race.new
  g.event_name
  g.start_time
  g.save
 
  
  erb :"success_race_add"
end