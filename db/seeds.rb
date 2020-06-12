users_list = [
  [ "JohnSmith", "j.smith@aol.com", "NY", "25" , "123"],
  [ "KarenSnow", "k.snow@yahoo.com", "CA", "30", "123"],
  [ "RogerRabbit","rr@roadrunner.com", "FL", "40", "123"],
  [ "BugsBunny", "bugs.bunny@gmail.com", "TX", "100", "123"]
]

users_list.each do |username, email, location, age, password|
  User.create(username: username, email: email, location: location, age: age, password: password)
end

watchlists_list = [
  [ "Watchlist 1",  1],
  [ "Watchlist 2", 1],
  [ "RogerRabbit", 2],
  [ "BugsBunny", 2]
]

watchlists_list.each do |name, user_id|
  Watchlist.create(name: name, user_id: user_id)
end
