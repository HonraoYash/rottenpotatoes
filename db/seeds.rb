# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
# Seed the RottenPotatoes DB with some movies.
more_movies = [
  {:title => 'My Neighbor Totoro', :rating => 'G',
    :release_date => '16-Apr-1988', description: 'A young girl befriends a forest spirit in rural Japan.'},
  {:title => 'Green Book', :rating => 'PG-13',
    :release_date => '16-Nov-2018', description:'A working-class Italian-American driver becomes the driver of an African-American classical pianist.'},
  {:title => 'Parasite', :rating => 'R',
    :release_date => '30-May-2019', description: 'A poor family schemes to become employed by a wealthy family.'},
  {:title => 'Nomadland', :rating => 'R',
    :release_date => '19-Feb-2021', description: 'A woman in her sixties embarks on a journey through the American West after losing everything during the recession.'},
  {:title => 'CODA', :rating => 'PG-13',
    :release_date => '13-Aug-2021', description: 'The only hearing member of a deaf family discovers her passion for music.'},
  {:title => 'Fast and Furious', :rating => 'PG-13', :release_date => '16-Jul-2010', description: 'A group of street racers becomes involved in a high-stakes crime ring.'},
  {:title => 'Godfather', :rating => 'R', :release_date => '31-Mar-1999', description: 'An organized crime family patriarch transfers control of his clandestine empire to his reluctant son.' },
  {:title => 'Titanic', :rating => 'PG-13', :release_date => '07-Nov-2014', description: 'A seventeen-year-old aristocrat falls in love with a kind but poor artist aboard the luxurious, ill-fated R.M.S. Titanic.'}
]

more_movies.each do |movie|
  Movie.find_or_create_by!(title: movie[:title]) do |m|
    m.rating = movie[:rating]
    m.release_date = movie[:release_date]
    m.description = movie[:description]
  end
end