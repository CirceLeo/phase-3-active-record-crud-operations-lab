class Movie < ActiveRecord::Base

    def self.create_with_title title
        Movie.create(title: title)
    end

    def self.first_movie
        Movie.first
    end
    def self.last_movie
        Movie.last
    end
    def self.movie_count 
        Movie.count
    end
    def self.find_movie_with_id id
        Movie.find id
    end

    def self.find_movie_with_attributes attribute
        Movie.find_by attribute
    end

    #fix
    def self.find_movies_after_2002
        Movie.where("year > ?", 2002)
        
    end

    def update_with_attributes attribute
        self.update(attribute)
    end

    def self.update_all_titles title
        Movie.update_all(title: title)
    end

    def self.delete_by_id id
        Movie.destroy id
    end

    def self.delete_all_movies
        Movie.destroy_all
    end
end