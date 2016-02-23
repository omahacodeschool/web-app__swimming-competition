#signups controller goes here
require 'pry'
MyApp.get "/signups" do 
  @events = Event.unlocked_events
  @lockedevents = Event.locked_events
  @swimmers = Swimmer.all
  erb :"/cv/signups"
end

MyApp.post "/newsignup" do
  @currentswimmer = Swimmer.find_by_id(params[:swimmerid])
  Signup.where("swimmer_id" => @currentswimmer.id).delete_all
  @currentswimmer.register(params[:events])
  @events = Event.unlocked_events
  @lockedevents = Event.locked_events
  @swimmers = Swimmer.all
  redirect '/view_swimmer/' + (params[:swimmerid])
end

MyApp.post "/remove_swimmer/:id" do
  @signup = Signup.find_by_id(params[:id])
  @signup.delete
  erb :"/cv/remove_swimmer"
end

#DB.define_table("signups")
#DB.define_column("signups","event_id","integer")
#DB.define_column("signups","swimmer_id","integer")