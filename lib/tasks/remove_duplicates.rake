namespace :remove_duplicates do
    desc "Remove duplicate movies"
    task movies: :environment do
      Movie.group(:title).having("count(*) > 1").each do |movie|
        Movie.where(title: movie.title).where.not(id: movie.id).destroy_all
      end
      puts "Duplicates removed."
    end
  end