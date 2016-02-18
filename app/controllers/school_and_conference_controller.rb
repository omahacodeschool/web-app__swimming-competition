MyApp.post "/view_add_school_and_conference_confirmation" do

  @conference_1 = Conference.new
  @conference_1.conference_name = (params["conference_1_name"])
  @conference_1.save
  @show_conference_id = @conference_1.id
  @show_added_conference = (params["conference_1_name"])

  @school_1 = School.new
  @school_1.school_name = (params["school_1_name"])
  @school_1.conference_id = @show_conference_id
  @school_1.save
  @show_added_school_name = (params["school_1_name"])


  
  erb :"view_add_school_and_conference"
end

MyApp.post "/delete_school/:school_id" do
  @school = School.find_by_id(params[:school_id])
  @swimmer = Swimmer.find_by_school_id(params[:school_id])
  @signup = Signup.find_by_swimmer_id(@swimmer.id)
  @school.delete
  @swimmer.delete
  @signup.delete

  erb :"view_add_school_and_conference"
end

MyApp.get "/view_add_school_and_conference" do

  erb :"view_add_school_and_conference"
end

MyApp.get "/" do
  erb :"view_home_page"
end
