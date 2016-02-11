#Shows the form for adding an event
MyApp.get "/event/new" do 
  erb :"add/add_events"
end

#Shows the form for adding a conference
MyApp.get "/conference/new" do 
  erb :"add/add_conferences"
end

#Shows the form for adding a college
MyApp.get "/college/new" do 
  erb :"add/add_colleges"
end

