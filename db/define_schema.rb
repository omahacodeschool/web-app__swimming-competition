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


#the names of the swimming events
DB.define_table("events")
DB.define_column("events","event_name","string")

#info about the swimmers
DB.define_table("swimmers")
DB.define_column("swimmers","first_name","string")
DB.define_column("swimmers","last_name","string")
DB.define_column("swimmers","college_id","integer")

#what events the swimmers registered for
DB.define_table("signups")
DB.define_column("signups","signup_id","integer")
DB.define_column("signups","swimmer_id","integer")

#the colleges participating in the tournament
DB.define_table("colleges")
DB.define_column("colleges","college_name","string")
DB.define_column("colleges","conference_id","integer")

#the conferences the colleges belong to
DB.define_table("conferences")
DB.define_column("conferences","conference_name","string")

#finish refers to the TIME that the swimmer FINISHED a match
DB.define_table("finishes")
DB.define_column("finishes","signup_id","integer")
DB.define_column("finishes","finish_time","time")

#who won in what order
DB.define_table("ranks")
DB.define_column("ranks","rank_name","string")

#who won!
DB.define_table("winners")
DB.define_column("winners","rank_id","integer")
DB.define_column("winners","finish_id","integer")

