require 'yaml'
require 'rainbow'
require 'net/http'

require_relative 'site_status/configuration'
require_relative 'site_status/request'
require_relative 'site_status/file_reader'

module SiteStat
  class << self
    attr_accessor :configuration
  end

  def self.configure
    @configuration ||= Configuration.new
    yield(configuration) if block_given?
  end
end

SiteStat::Request.new