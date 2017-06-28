class Event < ApplicationRecord
  belongs_to :user

  @current_user = User.find(5)
  @location = @current_user.city

  def self.get_info(params)
    if params[:q].blank?
      query = @location
    else
      query = params[:q] +"%"+ params[:city]
    end

    res = EventBriteApi.new("https://www.eventbriteapi.com/v3/events/search/", { q:query }).event_getter
  end

  def self.get_ticket_info(params)
    params[:keyword] = params[:q]
    if params[:keyword].blank?
      data = @location
    else
      data = "#{params[:keyword]} + #{params[:city]}"
    end
  result = TicketMasterApi.new("https://app.ticketmaster.com/discovery/v2/events.json?apikey=#{ENV['TICKET_API_KEY']}",{keyword:data}).ticketm_getter
  end
end
