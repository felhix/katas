require 'test_helper'

class FileDb::TableTest < Minitest::Test
  def setup
    db = FileDb::Database.new('fixtures/data.json')
    @movies = db.table("movies")
    @array_of_movies = [{"id"=>1, "title"=>"The Gold Rush", "year"=>1925, "director_id"=>1}, {"id"=>2, "title"=>"City Lights", "year"=>1931, "director_id"=>1}, {"id"=>3, "title"=>"The General", "year"=>1926, "director_id"=>3}, {"id"=>4, "title"=>"Modern Times", "year"=>1936, "director_id"=>1}, {"id"=>5, "title"=>"Vertigo", "year"=>1958, "director_id"=>2}, {"id"=>6, "title"=>"Psycho", "year"=>1960, "director_id"=>2}]
  end

  def test_select_returns_an_array
    assert_kind_of(Array, @movies.select)
  end

  def test_select_movies_returns_movies
    assert_equal(@array_of_movies, @movies.select)
  end

end
