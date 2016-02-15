MyApp.get "/conferences" do
  @conferences = Conference.all
  erb :"main/conferences"
end

MyApp.post "/conference_added" do
  x = Conference.new
  x.conference_name = params[:conference_name]
  x.save
  erb :"main/conference_added"
end

MyApp.get "/delete/conference_deleted/:dogfood" do
  @conference = Conference.find_by_id(params[:dogfood])
  @conference_name = @conference.conference_name
  @competitors_in_conference = Competitor.find_by_conference_name(@conference_name)
  if @competitors_in_conference != nil
    @display_this = @competitors_in_conference.first_name + " " + @competitors_in_conference.last_name + ", " + @competitors_in_conference.school_name
    erb :"main/conference_contains_competitors"
  else
    @conference.delete
    erb :"main/delete/conference_deleted"
  end
end

MyApp.get "/update/conference_update_form/:popsicle" do
  @conference = Conference.find_by_id(params[:popsicle])
  erb :"main/update/conference_update_form"
end

MyApp.post "/update/conference_updated/:stopsign" do
  @conference = Conference.find_by_id(params[:stopsign])
  @conference.conference_name = params[:conference_name]
  @conference.save
  erb :"main/update/conference_updated"
end