
puts "Making a bunch of random competitors..."
dm = Competitor.create(name: "Abraham Lincoln", age: 52, college_id: 1)
hp = Competitor.create(name: "Stephen Douglas", age:45, college_id: 2)
nr = Competitor.create(name: "William Taft", age: 51, college_id: 1)
ks = Competitor.create(name: "William Henry Harrison", age: 68, college_id: 3)
jh = Competitor.create(name: "Alexander Hamilton", age:47, college_id: 3)
tp = Competitor.create(name: "Aaron Burr", age: 48, college_id: 2)

competitors = [dm, hp, nr, ks, jh, tp]

rps = Activity.create(name: "Public Forum", max_score: 6,locked: false)
str = Activity.create(name: "Lincoln - Douglas", max_score: 6,locked: false)
prp = Activity.create(name: "Model UN", max_score: 6, locked: false)
sst = Activity.create(name: "Student Congress", max_score: 6, locked: false)
dbb = Activity.create(name: "Original Oratory", max_score: 6, locked: false)

activities = [rps, str, prp, sst, dbb]

rps = College.create(name: "UNL", conference_id: 1)
str = College.create(name: "Hard Knocks", conference_id: 2)
prp = College.create(name: "Hogwarts", conference_id: 2)

colleges = [rps, str, prp]

rps = Conference.create(name: "East Coast")
str = Conference.create(name: "West Coast")

conferences = [rps, str, prp]

dm = Result.create(competitor_id: 1, activity_id: 1, score: 4.55)
hp = Result.create(competitor_id: 2, activity_id: 2, score: 2.00)
nr = Result.create(competitor_id: 3, activity_id: 3, score: 3.44)
ks = Result.create(competitor_id: 4, activity_id: 4, score: 6.00)
jh = Result.create(competitor_id: 5, activity_id: 5, score: 5.70)
tp = Result.create(competitor_id: 6, activity_id: 1, score: 2.44)
dd = Result.create(competitor_id: 6, activity_id: 2, score: 4.55)
pp = Result.create(competitor_id: 5, activity_id: 2, score: 2.00)
rr = Result.create(competitor_id: 4, activity_id: 3, score: 3.44)
kk = Result.create(competitor_id: 3, activity_id: 4, score: 6.00)
jj = Result.create(competitor_id: 2, activity_id: 5, score: 5.70)
ss = Result.create(competitor_id: 1, activity_id: 6, score: 2.44)

results = [dm, hp, nr, ks, jh, tp,dd, pp, rr, kk, jj, ss]

