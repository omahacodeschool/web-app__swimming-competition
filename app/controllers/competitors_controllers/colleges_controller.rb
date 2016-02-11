#colleges controller goes here

MyApp.get "/colleges" do 
  @conferences = Conference.all
  @colleges = College.all 
  erb :"cv/colleges" 
end

MyApp.get "newcollege" do
  @conferences = Conference.all
  c = College.new
  c.college_name = params[:collegename]
  c.conference_id = params[:conferenceid]
  c.save
  erb :"cv/colleges"
end


#DB.define_table("colleges")
#DB.define_column("colleges","college_name","string")
#DB.define_column("colleges","conference_id","integer")