module SiteStat
  class Configuration

    attr_accessor :yml_path

    def initialize(data={})
      default_path = Dir.pwd << '/config/status_check.yml'
      @yml_path = data[:yml_path] || default_path
    end

  end
end
