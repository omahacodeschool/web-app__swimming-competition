require_relative "./_configure"

DB.define_table("competitors")
DB.define_column("competitors", "first_name", "string")
DB.define_column("competitors", "last_name", "string")
DB.define_column("competitors", "result", "string")
DB.define_column("competitors", "age", "integer")
DB.define_column("competitors", "college_id", "integer")

DB.define_table("activities")
DB.define_column("activities", "activity_name", "string")
DB.define_column("activities", "max_score", "integer")

DB.define_table("results")
DB.define_column("results", "student_id", "integer")
DB.define_column("results", "activity_id", "integer")
DB.define_column("results", "student_score", "integer")

DB.define_table("colleges")
DB.define_column("colleges", "college_name", "string")
DB.define_column("colleges", "conference_id", "integer")

DB.define_table("conferences")
DB.define_column("conferences", "conference_name", "string")
