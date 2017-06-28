require 'httparty'
require 'json'

class TicketMasterApi

  def initialize(url, parameter={})
    @url = url
    @keyword = parameter

  end


  def ticketm_getter

    response = HTTParty.get(@url,
      query: @keyword
    )
  end

end
