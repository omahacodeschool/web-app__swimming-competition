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
DB.define_column("swimmers", "last_name", "string")
DB.define_column("swimmers", "first_name", "string")
DB.define_column("swimmers", "college_id", "integer")

DB.define_table("race_results")
DB.define_column("race_results", "swim_entry_id", "integer")
DB.define_column("race_results", "swimmer_done", "integer")
DB.define_column("race_results", "swimmer_race_rank", "integer")

DB.define_table("swim_entries")
DB.define_column("swim_entries", "swimmer_id", "integer")
DB.define_column("swim_entries", "race_id", "integer")

DB.define_table("conferences")
DB.define_column("conferences", "conference_name", "string")

DB.define_table("colleges")
DB.define_column("colleges", "college_name", "string")
DB.define_column("colleges", "conference_id", "integer")
DB.define_column("colleges", "contact", "string")
DB.define_column("colleges", "contact_email", "string")
DB.define_column("colleges", "contact_ph", "string")
DB.define_column("colleges", "locked", "boolean")

DB.define_table("races")
DB.define_column("races", "event_name", "string")
DB.define_column("races", "start_time", "string")
DB.define_column("races", "locked", "boolean")