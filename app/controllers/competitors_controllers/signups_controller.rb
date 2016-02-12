#signups controller goes here
require 'pry'
MyApp.get "/signups" do 
  @events = Event.all
  @swimmers = Swimmer.all
  erb :"cv/signups"
end

MyApp.get "/newsignup" do
  s = Signup.new
  s.swimmer_id = params[:swimmerid]
  s.event_id = params[:eventid]
  s.save
  erb :"cv/signupaddsuccess"
end

#DB.define_table("signups")
#DB.define_column("signups","event_id","integer")
#DB.define_column("signups","swimmer_id","integer")