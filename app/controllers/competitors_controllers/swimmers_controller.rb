require 'pry'
#both the swimmer name AND the swimmer college goes here

MyApp.get "/swimmers" do
  erb :"cv/swimmers"
end

MyApp.get "/newswimmername" do
  s = Swimmer.new
  s.first_name = params[:swimmerfirstname]
  s.last_name = params[:swimmerlastname]
  s.college_id= params[:collegeid]
  s.save
  erb :"cv/swimmers"
end



#example from class::
#MyApp.get "/view_movie/:id' do    # <-- know that :id here is not special; #could be called anything
#    @movie = Movie.find_by_id(params[:id])
#end

#DB.define_table("swimmers")
#DB.define_column("swimmers","first_name","string")
#DB.define_column("swimmers","last_name","string")
#DB.define_column("swimmers","college_id","integer")