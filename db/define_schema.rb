require_relative "./_configure"

DB.define_table("competitors")
DB.define_column("competitors", "name", "string")
DB.define_column("competitors", "age", "integer")
DB.define_column("competitors", "college_id", "integer")
DB.define_column("competitors", "confirmed", "boolean")

DB.define_table("activities")
DB.define_column("activities", "name", "string")
DB.define_column("activities", "max_score", "integer")
DB.define_column("activities", "locked", "boolean")

DB.define_table("results")
DB.define_column("results", "competitor_id", "integer")
DB.define_column("results", "activity_id", "integer")
DB.define_column("results", "score", "float")

DB.define_table("colleges")
DB.define_column("colleges", "name", "string")
DB.define_column("colleges", "conference_id", "integer")

DB.define_table("conferences")
DB.define_column("conferences", "name", "string")
