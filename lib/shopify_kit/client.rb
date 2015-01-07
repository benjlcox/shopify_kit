require 'faraday'

module ShopifyKit
  class Client

    attr_reader :url

    def initialize(options = {})
      key = options[:key]
      password = options[:password]
      shop = options[:shop]
      @url = "https://#{key}:#{password}@#{shop}.myshopify.com/admin"
    end

    def connection
      Faraday.new(connection_options) do |req|
        req.adapter :net_http
      end
    end

    def self.resources
      {
        products: ProductResource
      }
    end

    def method_missing(name, *args, &block)
      if self.class.resources.keys.include?(name)
        resources[name] ||= self.class.resources[name].new(connection: connection)
        resources[name]
      else
        super
      end
    end

    def resources
      @resources ||= {}
    end

    private

    def connection_options
      {
        url: @url,
        headers: {
          content_type: 'application/json',
        }
      }
    end
  end
end
