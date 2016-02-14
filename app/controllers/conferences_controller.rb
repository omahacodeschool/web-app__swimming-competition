MyApp.get "/conferences" do
  @conferences = Conference.all
  erb :"main/conferences"
end

MyApp.get "/conference_added" do
  x = Conference.new
  x.conference_name = params[:conference_name]
  x.save
  erb :"main/conference_added"
end

MyApp.get "/delete/conference_deleted/:dogfood" do
  @conference = Conference.find_by_id(params[:dogfood])
  @conference.delete
  erb :"main/delete/conference_deleted"
end

MyApp.get "/update/conference_update_form/:popsicle" do
  @conference = Conference.find_by_id(params[:popsicle])
  erb :"main/update/conference_update_form"
end

MyApp.get "/update/conference_updated/:stopsign" do
  @conference = Conference.find_by_id(params[:stopsign])
  @conference.conference_name = params[:conference_name]
  @conference.save
  erb :"main/update/conference_updated"
end