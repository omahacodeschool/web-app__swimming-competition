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

DB.define_table("conferences")
DB.define_column("conferences", "conference_name", "string")

DB.define_table("colleges")
DB.define_column("colleges", "college_name", "string")
DB.define_column("colleges", "conference_id", "integer")

DB.define_table("competitors")
DB.define_column("competitors", "competitor_name", "string")
DB.define_column("competitors", "college_id", "integer")

DB.define_table("events")
DB.define_column("events", "event_name", "string")

DB.define_table("awards")
DB.define_column("awards", "event_id", "integer")
DB.define_column("awards", "rank", "integer")
DB.define_column("awards", "competitor_id", "integer")

DB.define_table("event_results")
DB.define_column("event_results", "event_id", "integer")
DB.define_column("event_results", "competitor_id", "integer")
DB.define_column("event_results", "finish_time", "float")
