class QuestionsController < ApplicationController
  Movie_count = Hash.new

  def question_1
    # How many movies are in the database?

    # Your Ruby goes here.

    @number_of_movies = Movie.count
  end

  def question_2
    # In what year was the oldest movie on the list released?

    # Your Ruby goes here.

    @year_of_oldest_movie = Movie.order("year ASC").first.year
  end

  def question_3
    # How many movies does the director of the first movie have on the list?

    # Your Ruby goes here.

    @number_of_movies_directed_by_first_movie_director = Movie.where({:director_id => Movie.order("year ASC").first.director_id}).count
  end

  def question_4
    # What is the most number of movies any single director has on the list?

    # Your Ruby goes here.
    # You'll probably have to use both ActiveRecord query methods as well as some plain old Ruby logic.

    Movie.each do |a|
      counts[a] += 1
    end

    @most_number_of_movies_by_a_single_director = Movie_count.sort.first
  end

  def question_5
    # What is the most recent movie on the list that the first actor appeared in?

    # Your Ruby goes here.
    # You'll probably have to use both ActiveRecord query methods as well as some plain old Ruby logic.

    # @most_recent_movie_for_first_actor = ???
  end
end
