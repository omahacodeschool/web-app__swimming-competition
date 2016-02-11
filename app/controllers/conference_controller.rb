MyApp.get "/conference" do

  # If a GET request is made to the root path, the following line of code
  # looks for a .erb view file located in the 'views' directory at the given
  # location. So it's going to look for views/main/welcome.erb.
  # 
  # Then it will combine that view file with the layout file and sent the
  # combined document back to the client.

  # x = StringSegmenter.new(params[:unsegmented_text])
  # x.run_program 
  # segmented_arr = x.final_words #array
  # segmented_words_as_string = segmented.arr.join(", ")

  # @s = Search.new
  # @s.search_string = params[:unsegmented_text]
  # @s.segmented_parts = segmented_words_as_string
  # @s.save

  erb :"conference"
end

MyApp.get "/conference/new" do

  # If a GET request is made to the root path, the following line of code
  # looks for a .erb view file located in the 'views' directory at the given
  # location. So it's going to look for views/main/welcome.erb.
  # 
  # Then it will combine that view file with the layout file and sent the
  # combined document back to the client.

  # Accepts the form entry data and creates the swimmer in the table. 


  
  erb :"conference"
end

MyApp.get "/conference/create" do

  # If a GET request is made to the root path, the following line of code
  # looks for a .erb view file located in the 'views' directory at the given
  # location. So it's going to look for views/main/welcome.erb.
  # 
  # Then it will combine that view file with the layout file and sent the
  # combined document back to the client.

  # Accepts the form entry data and creates the swimmer in the table. 
  c = Conference.new

  c.conference_name = params[:conference_name]
 
  
  erb :"conference"
end