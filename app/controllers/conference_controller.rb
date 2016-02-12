MyApp.get "/conferences/add_conference" do


  erb :"/conferences/add_conference"
end

MyApp.get "/conferences/conference/:id" do
  @conference = Conference.find_by_id(params[:id])
  erb :"/conferences/conference"
end