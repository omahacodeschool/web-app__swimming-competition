MyApp.get "/styles" do
  @styles = Style.all
  erb :"main/styles"
end

MyApp.get "/style_added" do
  x = Style.new
  x.style = params[:race_style]
  x.save
  erb :"main/style_added"
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