#colleges controller goes here

MyApp.get "/colleges" do 
  erb :"cv/signups" 
end
#DB.define_table("colleges")
#DB.define_column("colleges","college_name","string")
#DB.define_column("colleges","conference_id","integer")