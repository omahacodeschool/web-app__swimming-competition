MyApp.get "/add_school" do
  school_add = School.new
  school_add.school_name = params[:new_school]
  school_add.save
  allschools = School.all
  erb :"administrator"
end
MyApp.get "/school_conf" do
  school_conf = School.new
  school_conf.conference_id = params[:new_conf]
  school_conf.save
  erb :"administrator"
end
MyApp.get "/add_conference" do
  conference_add = Conference.new
  conference_add.conference_name = params[:new_conference]
  conference_add.save
  conf = Conference.all
  @conference = conf.join(" ")
  erb :"administrator"
end
MyApp.get "/view_school/:holder" do
  @school = School.find_by_id(params[:holder])
  @schools = School.new
  erb :"school_list"
end
MyApp.get "/delete_school/:place" do
  @school = School.find_by_id(params[:place])
  @school.delete
  erb :"administrator"
end
MyApp.get "/view_conferences/:place" do
  @conference = Conference.find_by_id(params[:place])
  erb :"conference_list"
end
MyApp.get "/delete_conference/:place" do
  @conference = Conference.find_by_id(params[:place])
  @conference.delete
  erb :"administrator"
end