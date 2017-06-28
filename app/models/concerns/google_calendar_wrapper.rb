require 'google/apis/calendar_v3'
require 'google/api_client/client_secrets.rb'

class GoogleCalendarWrapper

  def initialize(current_user)
    configure_client(current_user)
  end

  def configure_client(current_user)
    @client = Google::APIClient.new
    @client.authorization.access_token = current_user.token
    @client.authorization.refresh_token = current_user.refresh_token
    @client.authorization.client_id = ENV['GOOGLE_ID']
    @client.authorization.client_secret = ENV['GOOGLE_SECRET']
    @client.authorization.refresh!
    @service = @client.discovered_api('calendar', 'v3')
  end
end


# require 'google/apis/calendar_v3'
# require 'google/api_client/client_secrets.rb'
secrets = Google::APIClient::ClientSecrets.new({"web" => {"access_token" => current_user.access_token, "refresh_token" => "#{current_user.refresh_token}", "client_id" => "945481249376-iol50o9lmh8go43pna2s34bplm67s4ke.apps.googleusercontent.com", "client_secret" => "NraFdsjzAHKiwC9R2iyaCrBR"}})
cal = Google::Apis::CalendarV3::CalendarService.new
cal.authorization = secrets.to_authorization
cal.authorization.refresh!
cal.list_calendar_lists #profit!
