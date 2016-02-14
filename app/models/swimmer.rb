class Swimmer < ActiveRecord:: Base


def finish_time(water)
 x = SwimEntry.find_by_swimmer_id_and_race_id(self.id, water)
 x.id


end