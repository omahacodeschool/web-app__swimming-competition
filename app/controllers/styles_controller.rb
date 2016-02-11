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