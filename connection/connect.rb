# frozen_string_literal: true

require 'uri'
require 'net/http'
require 'openssl'

module Connection
  class Connect
    def initialize(url)
      @url = url
    end

    def call
      connect_http
    end

    private

    attr_reader :url

    def connect_http
      url = URI(@url)
      http = Net::HTTP.new(url.host, url.port)
      http.use_ssl = true
      http
    end
  end
end
