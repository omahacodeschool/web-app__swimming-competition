MyApp.get "/schools" do
  @schools = School.all
  erb :"main/schools"
end

MyApp.get "/add/school_form_add" do
  erb :"main/add/school_form_add"
end

MyApp.post "/school_added" do
  x = School.new
  if x.is_valid? == false
    erb :"main/errors/generic_errors"
  else
    x.school_name = params[:school_name]
    x.save
    erb :"main/add/school_added"
  end
end

MyApp.get "/delete/school_deleted/:dogfood" do
  @school = School.find_by_id(params[:dogfood])
  @school_name = @school.school_name
  @competitors = Competitor.find_by_school_name(@school_name)
  @results = Result.find_by_competitor_id(@competitors)
  @results.delete
  @competitors.delete
  @school.delete
  erb :"main/delete/school_deleted"
end

MyApp.get "/update/school_update_form/:popsicle" do
  @school = School.find_by_id(params[:popsicle])
  erb :"main/update/school_update_form"
end

MyApp.post "/update/school_updated/:stopsign" do
  @school = School.find_by_id(params[:stopsign])
  @school.school_name = params[:school_name]
  @school.save
  erb :"main/update/school_updated"
end