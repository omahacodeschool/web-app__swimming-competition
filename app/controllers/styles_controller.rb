MyApp.get "/styles" do
  @styles = Style.all
  erb :"main/styles"
end

MyApp.get "/add/style_form_add" do
  erb :"main/add/style_form_add"
end

MyApp.post "/style_added" do
  x = Style.new
  if x.is_valid? == false
    erb :"main/errors/generic_errors"
  else
    x.style = params[:race_style]
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
  @style.save
  erb :"main/update/style_updated"
end