require 'pry'
#both the swimmer name AND the swimmer college goes here

MyApp.get "/swimmers" do
  erb :"/cv/swimmers"
end

MyApp.get "/newswimmer" do
  
  s = Swimmer.new
  s.first_name = params[:swimmerfirstname]
  s.last_name = params[:swimmerlastname]
  s.save
  @currentswimmer = s.swimmer_id
  erb :"/cv/colleges"
end

#DB.define_table("swimmers")
#DB.define_column("swimmers","first_name","string")
#DB.define_column("swimmers","last_name","string")
#DB.define_column("swimmers","college_id","integer")