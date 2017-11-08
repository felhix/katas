module FileDb
  require 'pry'

  class Table
  	attr_accessor :db_array

  	def initialize(db_array)
  		@db_array = db_array
  	end

    def select(search_hash)
      p search_hash
      key_to_look_for = search_hash.values[0].keys[0].to_s
      value_to_look_for = search_hash.values[0].values[0]
      p "key : #{key_to_look_for}, value : #{value_to_look_for}"
      @db_array.each do |movie|
#        binding.pry
        if movie[key_to_look_for] == value_to_look_for
          p "kikou"
          p movie
        end
      end
    end

  end
end
