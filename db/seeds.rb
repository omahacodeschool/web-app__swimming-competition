
puts "Making a bunch of random competitors..."
dm = Competitor.create(name: "Abraham Lincoln", age: 52)
hp = Competitor.create(name: "Stephen Douglas", age:45)
nr = Competitor.create(name: "William Taft", age: 51)
ks = Competitor.create(name: "William Henry Harrison", age: 68)
jh = Competitor.create(name: "Alexander Hamilton", age:47)
tp = Competitor.create(name: "Aaron Burr", age: 48)

competitors = [dm, hp, nr, ks, jh, tp]

rps = Activity.create(activity_name: "Public Forum", max_score: 6)
str = Activity.create(activity_name: "Lincoln - Douglas", max_score: 6)
prp = Activity.create(activity_name: "Model UN", max_score: 6)
sst = Activity.create(activity_name: "Student Congress", max_score: 6)
dbb = Activity.create(activity_name: "Original Oratory", max_score: 6)

assignments = [rps, str, prp, sst, dbb]
