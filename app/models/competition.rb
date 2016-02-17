class Competition < ActiveRecord::Base

  def contestants
    # self.id refers to 1 particular row's (or object's) id
    # objects_by_competiton_id is a collection of rows in the results table with a matching value for self.id in the competition_id column
    objects_by_competiton_id = Result.where({"competition_id" => self.id})

    # an extraction of just the values (or cells) for the chili_id column from the ojects_by_competition_id collection
    chili_ids_collection = []

    objects_by_competiton_id.each do |row|
      chili_ids_collection << row.chili_id
    end

    # objects_by_chili_id is a collection of rows in the chilis table with a matching value for chili_ids in the id column
    objects_by_chili_id = Chili.where({"id" => chili_ids_collection})

    # an extraction of just the values (or cells) for the contestant_id column from the objects_by_chili_id collection
    contestant_ids_collection = []

    objects_by_chili_id.each do |row|
      contestant_ids_collection << row.contestant_id
    end

    # objects_by_contestant_id is a collection of rows in the contestants table with a matching value for contestant_ids in the id column
    @objects_by_contestant_id = Contestant.where("id" => contestant_ids_collection)
    
    #returns a collection of objects in the contestants table
    return @objects_by_contestant_id
  end




  


end











