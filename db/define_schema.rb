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

DB.define_table("students")
DB.define_column("students", "first_name", "string")
DB.define_column("students", "last_name", "string")
DB.define_column("students", "age", "integer")
DB.define_column("students", "college_id", "integer")

DB.define_table("activities")
DB.define_column("activities", "event_name", "string")
DB.define_column("activities", "max_possible_score_for_activity", "integer")

DB.define_table("results")
DB.define_column("results", "student_id", "integer")
DB.define_column("results", "event_id", "integer")
DB.define_column("results", "student_score", "integer")

DB.define_table("colleges")
DB.define_column("colleges", "college_name", "string")
DB.define_column("colleges", "conference_id", "integer")

DB.define_table("conferences")
DB.define_column("conferences", "conference_name", "string")

# Below is some copy and pasted code for how to make seeds

# rps = Assignment.create(title: "Rock-Paper-Scissors", difficulty: 52)
# str = Assignment.create(title: "String Segementer", difficulty: 89)
# prp = Assignment.create(title: "Prep Work", difficulty: 71)
# sst = Assignment.create(title: "Sinatra Starter", difficulty: 67)
# dbb = Assignment.create(title: "Database Starter", difficulty: 59)

# assignments = [rps, str, prp, sst, dbb]









