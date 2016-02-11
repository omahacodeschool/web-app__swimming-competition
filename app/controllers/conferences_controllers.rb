MyApp.get "/conferences" do
  x = Conference.new
  x.conference = params["conf"]
  x.save
  @y = [x.conference]
  erb :"conferences/conferences"
end

MyApp.get "/all_conferences" do 
  @conferences = Conference.all
  erb :"conferences/conferences_list"
end 

MyApp.get "/view_conference/:conference_id" do 
  @conference = Conference.find_by_id(params[:conference_id])
  erb :"conferences/single_conference"
end

