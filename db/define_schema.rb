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

#Set up Gamers table
DB.define_table("gamers")
DB.define_column("gamers", "last_name", "string")
DB.define_column("gamers", "first_name", "string")
DB.define_column("gamers", "squad_id", "integer")

#Set up Games table
DB.define_table("games")
DB.define_column("games", "game_name", "string")


#Set up Squads table
DB.define_table("squads")
DB.define_column("squads", "squad_name", "string")
DB.define_column("squads", "division_id", "integer")

#Set up Divison table
DB.define_table("divisions")
DB.define_column("divisions", "division", "string")

#Set up Results table
DB.define_table("results")
DB.define_column("results", "game_id", "integer")
DB.define_column("results", "gamer_id", "integer")
DB.define_column("results", "completion_time", "string")
