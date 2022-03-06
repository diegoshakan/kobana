# frozen_string_literal: true

require 'uri'
require 'net/http'
require 'openssl'

module Connection
  class RequestPost
    def initialize(url, body)
      @url = url
      @body = body
    end

    def call
      request_info
    end

    private

    attr_reader :url, :body

    def request_info
      request = Net::HTTP::Post.new(@url)
      request['Accept'] = 'application/json'
      request['User-Agent'] = 'ENV["email"]'
      request['Content-Type'] = 'application/json'
      request['Authorization'] = 'ENV["token_kobana"]'
      request.body = @body
      request
    end

    def request_body
      request.body = @body
    end

    def connect_response
      Connection::Connect.new(@url).call
    end
  end
end
