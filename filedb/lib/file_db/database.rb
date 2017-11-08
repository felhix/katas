module FileDb
  require 'json'

  class Database
      attr_accessor :db_hash

    def initialize(data_file)
      @db_hash = path_to_hash(data_file)
    end

    def table_names
      @db_hash.keys.sort
    end

    def table(table_name)
      table = Table.new(@db_hash[table_name])
    end

    private

      def path_to_hash(path)
        file = File.read(path)
        hash = JSON.parse(file)
      end
  end
end
