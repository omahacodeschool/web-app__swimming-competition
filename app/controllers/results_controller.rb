MyApp.get "/results/create" do
  erb :"new_result"
end

MyApp.get "/results" do
  @results = Result.all
  erb :"all_results"
end