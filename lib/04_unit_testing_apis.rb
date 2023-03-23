=begin
  # Exercise

rescue => exception
  
end
require 'date'
require 'json'
#require 'net/http'

class TimeError
  def initialize(requestor)
    @requestor = requestor
  end
  # Returns difference in seconds between server time
  # and the time on this computer
  def error(current_time)
    return get_server_time - current_time
  end

  private

  def get_server_time
    text_response = @requestor.get(URI("https://worldtimeapi.org/api/ip"))
    json = JSON.parse(text_response)
    return DateTime.parse(json["utc_datetime"]).to_time
  end
end

=end

require 'json'
require 'net/http'

class CatFacts
  
  def initialize(requestor)
    @requestor = requestor
  end

  def provide
    return "Cat fact: #{get_cat_fact["fact"]}"
  end

  private

  def get_cat_fact
    #text_response = Net::HTTP.get(URI("https://catfact.ninja/fact"))
    text_response = @requestor.get(URI("https://catfact.ninja/fact"))
    return JSON.parse(text_response)
  end
end