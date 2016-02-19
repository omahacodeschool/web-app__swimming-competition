MyApp.post "/add_school_and_conference_confirmation" do

  @conferences_all = Conference.all
  @schools_all = School.all

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


  
  erb :"view/school_and_conference/add_school_and_conference"
end

MyApp.post "/delete_conference/:conference_id" do

  @conferences_all = Conference.all
  @schools_all = School.all

  @conference = Conference.find_by_id(params[:conference_id])
  @school = School.find_by_conference_id(params[:conference_id])
  @conference.delete
  @school.delete

  erb :"view/school_and_conference/add_school_and_conference"
end

MyApp.post "/delete_school/:school_id" do

  @conferences_all = Conference.all
  @schools_all = School.all

  @school = School.find_by_id(params[:school_id])
  @swimmer = Swimmer.find_by_school_id(params[:school_id])

  #__________________________________________________________________________
  
  #Do I need to do this? I made a patch in the case of my above searches returning nil. If nil, my .delete method doesn't work. It looks sloppy, but is this only because it belongs in my models as a method?

  if @swimmer != nil
    @swimmer.each do |n|
      x = Signup.find_by_swimmer_id(n.id)
      x.delete
    end
  else
  end
  
  #Note: The line below does not work, if my @school search in line 31 returns nil. Thinking there has got to be a better way of doing this^______________________________

  @school.delete

  erb :"view/school_and_conference/add_school_and_conference"
end

MyApp.get "/add_school_and_conference" do

  @conferences_all = Conference.all
  @schools_all = School.all

  erb :"view/school_and_conference/add_school_and_conference"
end

MyApp.get "/" do
  erb :"view_home_page"
end
