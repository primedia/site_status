module SiteStat
  class FileReader

    attr_reader :url_hash

    def initialize
      @url_hash = loaded_file
    end

    private

      def file_path
        SiteStat.configuration.yml_path
      end

      def loaded_file
        begin
          YAML.load(File.read(file_path))
        rescue
          SiteStat.configure
          YAML.load(File.read(file_path))
        end
      end

  end
end