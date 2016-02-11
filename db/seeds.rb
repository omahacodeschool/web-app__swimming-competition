
puts "Making a bunch of random competitors..."
dm = Competitor.create(name: "Abraham Lincoln", age: 52)
hp = Competitor.create(name: "Stephen Douglas", age:45)
nr = Competitor.create(name: "William Taft", age: 51)
ks = Competitor.create(name: "William Henry Harrison", age: 68)
jh = Competitor.create(name: "Alexander Hamilton", age:47)
tp = Competitor.create(name: "Aaron Burr", age: 48)

competitors = [dm, hp, nr, ks, jh, tp]

rps = Activity.create(name: "Public Forum", max_score: 6)
str = Activity.create(name: "Lincoln - Douglas", max_score: 6)
prp = Activity.create(name: "Model UN", max_score: 6)
sst = Activity.create(name: "Student Congress", max_score: 6)
dbb = Activity.create(name: "Original Oratory", max_score: 6)

assignments = [rps, str, prp, sst, dbb]
