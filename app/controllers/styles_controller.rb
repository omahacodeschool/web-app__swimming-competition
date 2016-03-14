MyApp.get "/styles" do
  @styles = Style.all
  erb :"main/styles"
end

MyApp.get "/add/style_form_add" do
  erb :"main/add/style_form_add"
end

MyApp.post "/style_added" do
  x = Style.new
  x.style = params[:race_style]
  if x.is_valid? == false
    @error_object = x
    erb :"main/errors/generic_errors"
  else
    x.save
    erb :"main/add/style_added"
  end
end

MyApp.get "/delete/style_deleted/:dogfood" do
  @style = Style.find_by_id(params[:dogfood])
  @style.delete
  erb :"main/delete/style_deleted"
end

MyApp.get "/update/style_update_form/:popsicle" do
  @style = Style.find_by_id(params[:popsicle])
  erb :"main/update/style_update_form"
end

MyApp.post "/update/style_updated/:stopsign" do
  @style = Style.find_by_id(params[:stopsign])
  @style.style = params[:race_style]
  if @style.is_valid? == false
    @error_object = @style
    erb :"main/errors/generic_errors"
  else
    @style.save
    erb :"main/update/style_updated"
  end
end