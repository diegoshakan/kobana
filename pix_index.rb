require 'uri'
require 'net/http'
require 'openssl'

url = URI("https://api-sandbox.kobana.com.br/v2/charge/pix")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true

request = Net::HTTP::Get.new(url)
request["Accept"] = 'application/json'
request["User-Agent"] = 'Diego Araujo <diego_shakan@hotmail.com>'
request["Authorization"] = 'Bearer B255CpXVpe3Vi0D_AyvIANAc8V3SrUwWEGdXIrt4ojg'

response = http.request(request)
puts response.read_body
