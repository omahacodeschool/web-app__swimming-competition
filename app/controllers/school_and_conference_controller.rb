MyApp.post "/add_school_and_conference_confirmation" do

  @conferences_all = Conference.all
  @schools_all = School.all

  conference_1 = Conference.new
  conference_1.conference_name = (params["conference_1_name"])
  conference_1.save

  school_1 = School.new
  school_1.school_name = (params["school_1_name"])
  school_1.conference_id = conference_1.id
  school_1.save
  
  erb :"views/school_and_conference/add_school_and_conference"
end


MyApp.post "/delete_conference/:conference_id" do

  @conferences_all = Conference.all
  @schools_all = School.all

  conference_1 = Conference.find_by_id(params[:conference_id])
  schools_del = School.where("conference_id" => params[:conference_id])
  conference_1.delete
  schools_del.delete_all

  erb :"views/school_and_conference/add_school_and_conference"
end


MyApp.post "/delete_school/:school_id" do

  @conferences_all = Conference.all
  @schools_all = School.all

  school_1 = School.find_by_id(params[:school_id])
  swimmers_del = Swimmer.where("school_id" => params[:school_id])
  

  school_1.delete
  swimmers_del.delete_all

  erb :"views/school_and_conference/add_school_and_conference"
end


MyApp.get "/add_school_and_conference" do

  @conferences_all = Conference.all
  @schools_all = School.all

  erb :"views/school_and_conference/add_school_and_conference"
end


MyApp.get "/" do
  erb :"view_home_page"
end
