require 'httparty'
require 'json'

class EventBriteApi

  def initialize(url, parameter={})
    @url = url
    @parameter = parameter

  end

  def event_getter
    response = HTTParty.get(@url,
      query: @parameter,
      headers: {
        "Authorization" => "Bearer #{ENV['EVENT_BRITE_KEY']}"
      }
    )
  end
end
