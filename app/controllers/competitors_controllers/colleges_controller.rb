#colleges controller goes here
require 'pry'

MyApp.get "/colleges" do 
  @conferences = Conference.all
  @colleges = College.all 
  erb :"cv/colleges" 
end

MyApp.post "/newcollege" do
  c = College.new
  c.college_name = params[:collegename]
  c.conference_id = params[:conferenceid]
  c.save
  @newcollegename = params[:collegename]
  erb :"cv/collegeaddsuccess"
end


#DB.define_table("colleges")
#DB.define_column("colleges","college_name","string")
#DB.define_column("colleges","conference_id","integer")