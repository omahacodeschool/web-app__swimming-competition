#signups controller goes here
require 'pry'
MyApp.get "/signups" do 
  @events = Event.all
  @swimmers = Swimmer.all
  erb :"/cv/signups"
end

MyApp.post "/newsignup" do
  check = Event.find_by_id(params[:eventid])
  z = Signup.find_by swimmer_id:params[:swimmerid],event_id:params[:eventid]
  if check.locked == true
    erb :"/ev/nocando"
  elsif z == nil
    s = Signup.new
    s.swimmer_id = params[:swimmerid]
    s.event_id = params[:eventid]
    s.save
    erb :"cv/signupaddsuccess"
  else
    @events = Event.all
    @swimmers = Swimmer.all
    erb :"/cv/signups"
  end
end

MyApp.post "/remove_swimmer/:id" do
  @signup = Signup.find_by_id(params[:id])
  @signup.delete
  erb :"/cv/remove_swimmer"
end

#DB.define_table("signups")
#DB.define_column("signups","event_id","integer")
#DB.define_column("signups","swimmer_id","integer")