MyApp.get "/conferences" do
  @conferences = Conference.all
  erb :"main/conferences"
end

MyApp.get "/conference_added" do
  x = Conference.new
  x.conference_name = params[:conference]
  x.save
  erb :"main/conference_added"
end