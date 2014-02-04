module SiteStat
  class Request

    def initialize
      ping_urls
    end

    private

      def ping_urls
        services = FileReader.new.url_hash
        services.each { |svc, urls| get_status_for(svc, urls) }
      end

      def get_status_for(service, urls)
        urls.each do |url|
          escaped_url = URI.parse(url.to_s)
          begin
            res = Net::HTTP.get_response(escaped_url)
            handle_response(res, service, url)
          rescue Timeout::Error, Errno::ECONNREFUSED, SocketError => exc
            msg = "#{service}: #{url} | #{exc.message}"
            $stdout.puts msg.color(:red)
          end
        end
      end

      def handle_response(res, service, url)
        if res.code =~ /2|3\d{2}/
          msg =  "#{service}: #{res.code} | #{url} | #{res.message}"
          $stdout.puts msg.color(:green)
        else
          msg =  "#{service}: #{res.code} | #{url} | #{res.message}"
          $stdout.puts msg.color(:red)
        end
      end

  end
end
