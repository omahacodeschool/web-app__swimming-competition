require 'pry'
#main controller goes here
# The path being defined for this controller action is just "/", meaning 
# the root path. It's the homepage.
MyApp.get "/" do
  # If a GET request is made to the root path, the following line of code
  # looks for a .erb view file located in the 'views' directory at the given
  # location. So it's going to look for views/main/welcome.erb.
  # 
  # Then it will combine that view file with the layout file and sent the
  # combined document back to the client.
  erb :"/admin"
end

MyApp.get "/swimmingevents" do
  erb :"/ev/swimmingevents"
end

MyApp.get "/competitors" do
  erb :"/cv/competitors"
end

#MyApp.get "/newevent" do
#  
#  e = Event.new
#  e.event_name = params[:neweventname]
#  e.save
#  binding.pry
#
#  erb :"/ev/events"
#end
#
#MyApp.get "/events" do
#  
#  @events = Event.all
#  erb :"/ev/events"
#  
#end
#
#MyApp.get "/newswimmer" do
#  
#  s = Swimmer.new
#  s.event_name = params[:newswimmername]
#  s.save
#  binding.pry
#
#  erb :"/ev/events"
#end


