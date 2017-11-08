module FileDb
  require 'json'

  class Database
      attr_accessor :hash

    def initialize(data_file)
      @hash = path_to_hash(data_file)
    end

    def table_names
      @hash.keys.sort
    end

    private

      def path_to_hash(path)
        file = File.read(path)
        hash = JSON.parse(file)
      end

  end
end
