require 'pry'
#both the swimmer name AND the swimmer college goes here

MyApp.get "/swimmers" do
  @swimmers = Swimmer.all
  @colleges = College.all
  erb :"/cv/swimmers"
end

MyApp.post "/newswimmername" do
  s = Swimmer.new
  s.first_name = params[:swimmerfirstname]
  s.last_name = params[:swimmerlastname]
  s.college_id= params[:collegeid]
  s.save
  @newswimmername = params[:swimmerfirstname] + " " + params[:swimmerlastname]
  erb :"/cv/swimmeraddsuccess"
end

MyApp.get "/view_swimmer/:id" do
  @currentswimmer = Swimmer.find_by_id(params[:id])
  @signups = Signup.all
  z = Signup.where({"swimmer_id" => (params[:id])})
  @events = []
  z.each do |banana|
    @events << banana.find_event_name
  end
  #binding.pry
  erb :"/cv/view_swimmer"
end

MyApp.post "/deleteswimmer/:id" do
  @swimmer = Swimmer.find_by_id(params[:id])
  @registrations = Signup.where({"swimmer_id" => (params[:id])})
  @registrations.delete_all
  @times = Finish.where({"swimmer_id" => (params[:id])})
  @times.delete_all
  @swimmer.delete
  erb :"/cv/deletesuccess"
end



#example from class::
#MyApp.get "/view_movie/:id' do
#    @movie = Movie.find_by_id(params[:id])
#end

#DB.define_table("swimmers")
#DB.define_column("swimmers","first_name","string")
#DB.define_column("swimmers","last_name","string")
#DB.define_column("swimmers","college_id","integer")