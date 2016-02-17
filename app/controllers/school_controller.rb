MyApp.get "/add_school" do
  school_add = School.new
  school_add.school_name = params[:new_school]
  school_add.conference_id = params[:new_conf]
  school_add.save
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
  @swimmer = Swimmer.where({"school_id" => @school.id})
  @school.delete
  @swimmer.delete
  erb :"administrator"
end
MyApp.get "/view_conferences/:place" do
  @conference = Conference.find_by_id(params[:place])
  erb :"conference_list"
end
MyApp.get "/delete_conference/:place" do
  @conference = Conference.find_by_id(params[:place])
  @school = School.where({"conference_id" => @conference.id})
  @conference.delete
  @school.delete
  erb :"administrator"
end
MyApp.get "/edit_school/:place" do
  @school = School.find_by_id(params[:place])
  erb :"edit_school"
end
MyApp.get "/edit_school/finish_edit_school/:holder" do
  @school = School.find_by_id(params[:holder])
  @school.school_name = params[:edit_name]
  @school.save
  erb :"administrator"
end
