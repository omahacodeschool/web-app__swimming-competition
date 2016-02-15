require_relative "./_configure"

# Define your tables and their columns below this line.
# -----------------------------------------------------------------------------

# Column names should be all lowercase and have no spaces or any other special
# characters--except for underscores. So "running_time" is valid, but
# "running time" and "running_time!" are not vaild.

# The `id` column and timestamp columns are automatically added.
# Do not define those columns yourself.

# What table do you need to store the necessary information?
# What columns do you need in that table?

DB.define_table("swimmers")
DB.define_column("swimmers", "swimmer_name", "string")
DB.define_column("swimmers", "university_id", "integer")

DB.define_table("conferences")
DB.define_column("conferences", "conference_name", "string")

DB.define_table("universities")
DB.define_column("universities", "university_name", "string")
DB.define_column("universities", "conference_id", "integer")

DB.define_table("events")
DB.define_column("events", "event_name", "string")
DB.define_column("events", "event_locked", "boolean")

DB.define_table("results")
DB.define_column("results", "swimmer_id", "integer")
DB.define_column("results", "event_id", "integer")
DB.define_column("results", "swimmer_time", "decimal")

DB.define_table("standings")
DB.define_column("standings", "event_id", "integer")
DB.define_column("standings", "first_id", "integer")
DB.define_column("standings", "second_id", "integer")
DB.define_column("standings", "third_id", "integer")

#This last table has me a little confused at the moment.  In my mind I think that the "first_id" column will contain the id of the row from the "results" table with the fastest time for an event.  Describing this, my guess is that the challenge will be making sure that somehow a method finds the fastest times for ONLY the "event_id" being searched.  Otherwise it would just find the fastest time in the entire "results" table regardless of event.  



