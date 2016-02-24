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

  if c.is_valid == false
    @errorobject = "college"
    @errors = c.get_errors
    erb :"/cv/college_validation_error"
  elsif c.is_valid == true
    c.save
    @newcollegename = params[:collegename]
    erb :"cv/collegeaddsuccess"
  end
end


#DB.define_table("colleges")
#DB.define_column("colleges","college_name","string")
#DB.define_column("colleges","conference_id","integer")