# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
Studio.destroy_all
Movie.destroy_all
Actor.destroy_all

# Generate models and tables, according to the domain model.
studio = Studio.new
studio["name"] = "Warner Bros."
studio.save


batman_begins = Movie.new
batman_begins["title"] = "Batman Begins"
batman_begins["year_released"] = 2005
batman_begins["rated"] = "PG-13"
batman_begins["studio_id"] = studio["id"]
batman_begins.save

the_dark_knight = Movie.new
the_dark_knight["title"] = "The Dark Knight"
the_dark_knight["year_released"] = 2008
the_dark_knight["rated"] = "PG-13"
the_dark_knight["studio_id"] = studio["id"]
the_dark_knight.save

the_dark_knight_rises = Movie.new
the_dark_knight_rises["title"] = "The Dark Knight Rises"
the_dark_knight_rises["year_released"] = 2012
the_dark_knight_rises["rated"] = "PG-13"
the_dark_knight_rises["studio_id"] = studio["id"]
the_dark_knight_rises.save

christian_bale = Actor.new
christian_bale["name"] = "Christian Bale"
christian_bale.save

michael_caine = Actor.new
michael_caine["name"] = "Michael Caine"
michael_caine.save

liam_neeson = Actor.new
liam_neeson["name"] = "Liam Neeson"
liam_neeson.save

katie_holmes = Actor.new
katie_holmes["name"] = "Katie Holmes"
katie_holmes.save

gary_oldman = Actor.new
gary_oldman["name"] = "Gary Oldman"
gary_oldman.save

heath_ledger = Actor.new
heath_ledger["name"] = "Heath Ledger"
heath_ledger.save

aaron_eckhart = Actor.new
aaron_eckhart["name"] = "Aaron Eckhart"
aaron_eckhart.save

michael_caine = Actor.new
michael_caine["name"] = "Michael Caine"
michael_caine.save

maggie_gyllenhaal = Actor.new
maggie_gyllenhaal["name"] = "Maggie Gyllenhaal"
maggie_gyllenhaal.save

tom_hardy = Actor.new
tom_hardy["name"] = "Tom Hardy"
tom_hardy.save

joseph_gordon_levitt = Actor.new
joseph_gordon_levitt["name"] = "Joseph Gordon-Levitt"
joseph_gordon_levitt.save

anne_hathaway = Actor.new
anne_hathaway["name"] = "Anne Hathaway"
anne_hathaway.save

bruce_wayne = Role.new
bruce_wayne["character_name"] = "Bruce Wayne"
bruce_wayne["movie_id"] = batman_begins["id"]
bruce_wayne["actor_id"] = christian_bale["id"]
bruce_wayne.save

bruce_wayne = Role.new
bruce_wayne["character_name"] = "Bruce Wayne"
bruce_wayne["movie_id"] = the_dark_knight["id"]
bruce_wayne["actor_id"] = christian_bale["id"]
bruce_wayne.save

bruce_wayne = Role.new
bruce_wayne["character_name"] = "Bruce Wayne"
bruce_wayne["movie_id"] = the_dark_knight_rises["id"]
bruce_wayne["actor_id"] = christian_bale["id"]
bruce_wayne.save

alfred = Role.new
alfred["character_name"] = "Alfred"
alfred["movie_id"] = batman_begins["id"]
alfred["actor_id"] = michael_caine["id"]
alfred.save

alfred = Role.new
alfred["character_name"] = "Alfred"
alfred["movie_id"] = the_dark_knight["id"]
alfred["actor_id"] = michael_caine["id"]
alfred.save

ras_al_ghul = Role.new
ras_al_ghul["character_name"] = "Ra's Al Ghul"
ras_al_ghul["movie_id"] = batman_begins["id"]
ras_al_ghul["actor_id"] = liam_neeson["id"]
ras_al_ghul.save

rachel_dawes = Role.new
rachel_dawes["character_name"] = "Rachel Dawes"
rachel_dawes["movie_id"] = batman_begins["id"]
rachel_dawes["actor_id"] = katie_holmes["id"]
rachel_dawes.save

rachel_dawes = Role.new
rachel_dawes["character_name"] = "Rachel Dawes"
rachel_dawes["movie_id"] = the_dark_knight["id"]
rachel_dawes["actor_id"] = maggie_gyllenhaal["id"]
rachel_dawes.save

commissioner_gordon = Role.new
commissioner_gordon["character_name"] = "Comissioner Gordon"
commissioner_gordon["movie_id"] = batman_begins["id"]
commissioner_gordon["actor_id"] = gary_oldman["id"]
commissioner_gordon.save

commissioner_gordon = Role.new
commissioner_gordon["character_name"] = "Comissioner Gordon"
commissioner_gordon["movie_id"] = the_dark_knight_rises["id"]
commissioner_gordon["actor_id"] = gary_oldman["id"]
commissioner_gordon.save

joker = Role.new
joker["character_name"] = "Joker"
joker["movie_id"] = the_dark_knight["id"]
joker["actor_id"] = heath_ledger["id"]
joker.save

harvey_dent = Role.new
harvey_dent["character_name"] = "Harvey Dent"
harvey_dent["movie_id"] = the_dark_knight["id"]
harvey_dent["actor_id"] = aaron_eckhart["id"]
harvey_dent.save

bane = Role.new
bane["character_name"] = "Bane"
bane["movie_id"] = the_dark_knight_rises["id"]
bane["actor_id"] = tom_hardy["id"]
bane.save

john_blake = Role.new
john_blake["character_name"] = "John Blake"
john_blake["movie_id"] = the_dark_knight_rises["id"]
john_blake["actor_id"] = joseph_gordon_levitt["id"]
john_blake.save

selina_kyle = Role.new
selina_kyle["character_name"] = "Selina Kyle"
selina_kyle["movie_id"] = the_dark_knight_rises["id"]
selina_kyle["actor_id"] = anne_hathaway["id"]
selina_kyle.save


# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
# TODO!

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output.
# TODO!

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!
