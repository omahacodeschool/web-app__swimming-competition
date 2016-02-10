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
DB.define_column("events","event_name","string")

DB.define_table("swimmers")
DB.define_column("swimmers","first_name","string")
DB.define_column("swimmers","last_name","string")
DB.define_column("swimmers","college_id","integer")