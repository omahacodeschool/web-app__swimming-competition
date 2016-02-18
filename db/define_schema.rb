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

#Make "penguins" table
#needs the following columns:
#last_name, first_name, rookery_id
DB.define_table("penguins")
DB.define_column("penguins", "last_name", "string")
DB.define_column("penguins", "first_name", "string")
DB.define_column("penguins", "rookery_id", "integer")
DB.define_column("penguins", "age", "integer")

#Make "events" table
#needs the following columns:
#name, num_entries, start_time, locked

DB.define_table("events")
DB.define_column("events", "name", "string")
DB.define_column("events", "num_entries", "integer")
DB.define_column("events", "start_time", "time")
DB.define_column("events", "locked", "boolean")


#Make "rookeries" table
#needs the following columns:
#name, conference_id
DB.define_table("rookeries")
DB.define_column("rookeries", "name", "string")
DB.define_column("rookeries", "conference_id", "integer")

#Make "conferences" table
#needs the following columns:
#name
DB.define_table("conferences")
DB.define_column("conferences", "name", "string")


#make "results" table
#needs the following columns:
#penguin_id, event_id, time
DB.define_table("results")
DB.define_column("results", "penguin_id", "integer")
DB.define_column("results", "event_id", "integer")
DB.define_column("results", "time", "decimal")

