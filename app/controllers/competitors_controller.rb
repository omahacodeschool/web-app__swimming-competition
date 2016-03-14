MyApp.get "/competitors" do
  @competitors = Competitor.all
  erb :"main/competitors"
end

MyApp.get "/add/competitor_form_add" do
  @competitors = Competitor.all
  @schools = School.all
  @conferences = Conference.all
  erb :"main/add/competitor_form_add"
end

MyApp.post "/competitor_added" do
  x = Competitor.new
  x.first_name = params[:firstname]
  x.last_name = params[:lastname]
  x.school_name = params[:school]
  x.conference_name = params[:conference]
  x.gender = params[:gender]
  if x.is_valid? == false
    @error_object = x
    erb :"main/errors/generic_errors"
  else
    x.save
    erb :"main/add/competitor_added"
  end
end

MyApp.get "/delete/competitor_deleted/:dogfood" do
  @competitor = Competitor.find_by_id(params[:dogfood])
  @results = Result.find_by_competitor_id(params[:dogfood])
  @results.delete
  @competitor.delete
  erb :"main/delete/competitor_deleted"
end

MyApp.get "/update/competitor_update_form/:popsicle" do
  @competitors = Competitor.all
  @schools = School.all
  @conferences = Conference.all
  @competitor = Competitor.find_by_id(params[:popsicle])
  erb :"main/update/competitor_update_form"
end

MyApp.post "/update/competitor_updated/:stopsign" do
  @competitor = Competitor.find_by_id(params[:stopsign])
  @competitor.first_name = params[:firstname]
  @competitor.last_name = params[:lastname]
  @competitor.school_name = params[:school]
  @competitor.conference_name = params[:conference]
  @competitor.gender = params[:gender]
  if @competitor.is_valid? == false
    @error_object = @competitor
    erb :"main/errors/generic_errors"
  else
    @competitor.save
    erb :"main/update/competitor_updated"
  end
end