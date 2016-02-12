#conferences controller goes here
require 'pry'

MyApp.get "/superadmin/conferences" do
#create new conferences
  @conferences = Conference.all
  erb :"cv/superadmin_conferences"
end

MyApp.get "/newconference" do
  c = Conference.new
  c.conference_name = params[:conferencename]
  c.save
  @newconferencename = params[:conferencename]
  erb :"/cv/conferencesuccess"
end

MyApp.get "/conferences" do
#view colleges in the two conferences
  @conferences = Conference.all
  erb :"/cv/conferences"
end

#DB.define_table("conferences")
#DB.define_column("conferences","conference_name","string")
