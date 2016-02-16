class Competition < ActiveRecord::Base

  def contestants
    # result objects is a collection of rows
    result_objects = Result.where({"competition_id" => self.id})

    #just the cells for a particular column in result_ojects
    chili_ids = []

    result_objects.each do |p|
      chili_ids << p.chili_id
    end

    # c is a collection of rows/objects
    c = Chili.where({"id" => chili_ids})

    # just the cells for contestant_id column in c
    contestant_ids = []
    c.each do |c|
      contestant_ids << c.contestant_id
    end

    # cont is a collection of rows/objects
    cont = Contestant.where("id" => contestant_ids)
    return cont

  end

  def contestant_last_name
    arr = ["fake_last_name1", "fake_last_name2", "fake_last_name3"]
  end

end


class Movie < ActiveRecord::Base
  # in the movies class make a method for actors names
  # start with getting this table's (Movies) id
  # self.id
  # Search the bridge table (Performance) for a movie_id entry that matches the self.id

    def actors
        performances = Performance.where({"movie_id" => self.id})

        actor_ids = []

        performances.each do |p|
            actor_ids << p.actor_id
        end

        # after this loop, actor_ids = [1, 2]

        Actor.where({"id" => actor_ids}) # <-- the ActiveRecord method .where allows us to pass in Arrays in this way.
    end
end