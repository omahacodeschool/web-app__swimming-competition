MyApp.get "/" do
  erb :"main/welcome"
end

MyApp.get "/competitor_added" do
  erb :"main/competitor_added"
end