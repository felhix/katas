require 'test_helper'

class FileDb::DatabaseTest < Minitest::Test
  def setup
    @db = FileDb::Database.new('fixtures/data.json')
  end

  def test_table_names_returns_an_array
    assert_kind_of(Array, @db.table_names)
  end

  def test_table_names_returns_table_name
    assert_equal(['directors', 'movies'], @db.table_names)
  end

#  def test_table_returns_table_object
#    assert_equal (FileDB::Table, @db.table("movies").class)
#    assert_instance_of FileDB::Table, @db.table("movies")
#  end

end
