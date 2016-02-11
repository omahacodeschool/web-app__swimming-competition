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

DB.define_table("events")
DB.define_column("events", "gender", "string")
DB.define_column("events", "distance", "integer")
DB.define_column("events", "style_id", "integer")

DB.define_table("styles")
DB.define_column("styles", "style", "string")

DB.define_table("competitors")
DB.define_column("competitors", "first_name", "string")
DB.define_column("competitors", "last_name", "string")
DB.define_column("competitors", "school_name", "string")
DB.define_column("competitors", "conference_name", "string")
DB.define_column("competitors", "gender", "string")

DB.define_table("schools")
DB.define_column("schools", "school_name", "string")

DB.define_table("conferences")
DB.define_column("conferences", "conference_name", "string")

DB.define_table("results")
DB.define_column("results", "event_id", "integer")
DB.define_column("results", "competitor_id", "integer")
DB.define_column("results", "final_time", "decimal")