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
