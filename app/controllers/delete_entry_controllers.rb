MyApp.get "/delete_competition/:num" do
  @competition = Competition.find_by_id(params[:num])
  @competition.delete
  @comp_result = Result.where(competition_id: params[:num])
  @comp_result.delete_all
  erb :"delete_entry/competition_deleted"
end

MyApp.get "/delete_chili/:num" do
  @chili = Chili.find_by_id(params[:num])
  @chili.delete
  @chili_result = Result.where(chili_id: params[:num])
  @chili_result.delete_all
  erb :"delete_entry/chili_deleted"
end

MyApp.get "/delete_contestant/:num" do
  @contestant = Contestant.find_by_id(params[:num])
  @cont_chili = Chili.where(contestant_id: params[:num])

  @chili_ids = []
  @cont_chili.each do |x|
    @chili_ids << x.id
  end

  @chili_result = Result.where({"chili_id" => @chili_ids})
  @chili_result.delete_all
  @cont_chili.delete_all
  @contestant.delete
  erb :"delete_entry/contestant_deleted"
end

