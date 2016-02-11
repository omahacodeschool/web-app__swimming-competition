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

DB.define_table("swimmer_infos")
DB.define_column("swimmer_infos", "last_name", "string")
DB.define_column("swimmer_infos", "first_name", "string")
DB.define_column("swimmer_infos", "team_id", "integer")
DB.define_column("swimmer_infos", "age", "integer")
DB.define_column("swimmer_infos", "gender_id", "integer")
DB.define_column("swimmer_infos", "height", "float")
DB.define_column("swimmer_infos", "weight", "integer")

DB.define_table("genders")
DB.define_column("genders", "gender", "string")

DB.define_table("events")
DB.define_column("events", "distance", "string")
DB.define_column("events", "stroke", "string")

DB.define_table("signup_results")
DB.define_column("signup_results", "swimmer_info_id", "integer")
DB.define_column("signup_results", "event_id", "integer")
DB.define_column("signup_results", "time", "float")
DB.define_column("signup_results", "rank", "integer")

DB.define_table("teams")
DB.define_column("teams", "team", "string")
DB.define_column("teams", "conference_id", "integer")

DB.define_table("conferences")
DB.define_column("conferences", "conference", "string")
