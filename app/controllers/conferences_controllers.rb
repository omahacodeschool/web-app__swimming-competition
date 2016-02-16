MyApp.post "/conferences" do
  x = Conference.new
  x.conference = params["conference"]
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

MyApp.post "/delete_conference/:conference_id" do
  @conference = Conference.find_by_id(params[:conference_id])
  @conference.delete
  @school = School.where("conference_id" => params[:conference_id])
  @school.each do |s|
    s.delete
  end
  erb :"conference/deleted"
end

MyApp.get "/edit_conference/:conference_id" do
  @conference = Conference.find_by_id(params[:conference_id])
  erb :"conferences/form_for_editing_conference"
end

MyApp.post "/process_conference_edit_form/:conference_id" do
  x = Conference.find_by_id(params[:conference_id])
  x.conference = params["conference"]
  x.save
  @y = [x.conference]
  erb :"conferences/processed"
 end 