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
DB.define_table("teams")

DB.define_column("teams", "conference", "string")
DB.define_column("teams", "swimmer_count", "string")
DB.define_column("teams", "team_name", "string")

DB.define_table("swimmers")

DB.define_column("swimmers", "team_id", "integer")
DB.define_column("swimmers", "swimmer_name", "string")
DB.define_column("swimmers", "dob", "string")
DB.define_column("swimmers", "payment_status", "integer")

DB.define_table("events")

DB.define_column("events", "event_name", "string")
DB.define_column("events", "swimmers_in", "integer")
DB.define_column("events", "best_time", "float")

DB.define_table("runs")

DB.define_column("runs", "event_id", "integer")
DB.define_column("runs", "team_id", "integer")
DB.define_column("runs", "swimmer_id", "integer")
DB.define_column("runs", "run_time", "float")
DB.define_column("runs", "run_place", "integer")