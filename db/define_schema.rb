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
DB.define_table("contestants")
DB.define_column("contestants","first_name", "string")
DB.define_column("contestants","last_name", "string")
DB.define_column("contestants","city_id", "integer")

DB.define_table("chilis")
DB.define_column("chilis","name","string")
DB.define_column("chilis","contestant_id","integer")

DB.define_table("regions")
DB.define_column("regions","city", "string")

DB.define_table("results")
DB.define_column("results","contestant_id","integer")
DB.define_column("results","competition_id","integer")
DB.define_column("results","appearance","integer")
DB.define_column("results","aroma","integer")
DB.define_column("results","texture","integer")
DB.define_column("results","flavor","integer")
DB.define_column("results","heat","integer")
DB.define_column("results","overall","integer")

DB.define_table("competitions")
DB.define_column("competitions", "category","string")