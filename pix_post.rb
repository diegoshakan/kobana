# frozen_string_literal: true

require_relative 'connection/connect'
require_relative 'connection/request_post'
require_relative 'payer'

url = 'https://api-sandbox.kobana.com.br/v2/charge/pix'
http = Connection::Connect.new(url).call

payer = Payer.new('699.660.200-98', 'João Araujo')
expire_at = Time.now + 5
pix_reason = "Teste Kobana"

body = "{\"payer\":{\"document_number\":\"#{payer.document_number}\",\"name\":\"#{payer.name}\"},\"amount\":140.99,\"pix_account_id\":57,\"txid\":\"#{pix_reason}\",\"expire_at\":\"#{expire_at}\"}"

request = Connection::RequestPost.new(url, body).call

response = http.request(request)

puts response.read_body