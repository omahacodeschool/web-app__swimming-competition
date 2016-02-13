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