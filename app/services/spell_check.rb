# frozen_string_literal: true

require 'uri'
require 'net/http'
require 'openssl'

class SpellCheck
  def initialize(word)
    @word = word
  end


  #TODO : cache the correct words
  def check
    url = URI('https://montanaflynn-spellcheck.p.rapidapi.com/check/?text=' + @word)

    http = Net::HTTP.new(url.host, url.port)
    http.use_ssl = true
    http.verify_mode = OpenSSL::SSL::VERIFY_NONE

    request = Net::HTTP::Get.new(url)
    request['x-rapidapi-host'] = 'montanaflynn-spellcheck.p.rapidapi.com'
    request['x-rapidapi-key'] =  ENV['spell_check_key']
    response = http.request(request)
    @body= JSON.parse(response.body)
    @res=false
    if (@body['suggestion']===@word)
      @res=true
    end
    @res
  end
end
